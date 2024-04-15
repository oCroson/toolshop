#!/bin/bash

# Define default Ansible version (if not set)
ansible_version=${ansible_version:-latest}

# Package manager check
if [ $(command -v apt) ]; then
  package_manager="apt"
elif [ $(command -v yum) ]; then
  package_manager="yum"
fi

# Check if Ansible is already installed (assuming 'ansible' command)
if ! command -v ansible &> /dev/null; then
  # Install Ansible based on package manager and desired version
  if [ "$package_manager" == "apt" ]; then
    sudo apt update && sudo apt install ansible=$ansible_version
  elif [ "$package_manager" == "yum" ]; then
    # Handle yum specific versioning (e.g., ansible-<version>)
    versioned_package="ansible-$ansible_version"
    if [ "$ansible_version" == "latest" ]; then
      versioned_package="ansible"
    fi
    sudo yum install $versioned_package
  fi
fi

if [ $(command -v apt) ]; then
  package_manager="apt"
  package_name="puppet=$puppet_version"
elif [ $(command -v yum) ]; then
  package_manager="yum"
  package_name="puppet-$puppet_version"
fi

# Check if Puppet installation is needed
if [[ "$puppet_needed" == "true" ]]; then
  # Check if Puppet is already installed (assuming 'puppet' command)
  if ! command -v puppet &> /dev/null; then
    # Install Puppet using package manager and desired version (risky)
    if [ "$package_manager" ]; then
      sudo apt update && sudo apt install $package_name  # For apt
      sudo yum install $package_name                   # For yum
    fi
  fi
fi

# Define default Terraform version (if not set)
terraform_version=${terraform_version:-latest}

# Install Terraform based on package manager and desired version
if [ "$package_manager" ]; then
  # Adjust package name and installation command based on your system
  if [ "$package_manager" == "apt" ]; then
    package_name="terraform=$terraform_version"
    sudo apt update && sudo apt install $package_name
  elif [ "$package_manager" == "yum" ]; then
    package_name="hashicorp-terraform"  # Adjust package name if needed
    sudo yum install -y https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip
  fi
fi


# Create ansi-scripts directory
mkdir -p ~/ops-repository

# Clone Git repository (replace with your actual repository URL)
git clone $ops_repository ./ops-repository
