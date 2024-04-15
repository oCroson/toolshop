# toolshop

## Description:
Toolshop is a "docker container command-line tool" for managing all your devops related tooling, it is essentially a version controlled configuration management manager designed to simplify the management of your configuration management profiles, tool versions, and tool calling internal to your SRE or DevOps environment.  It is made to be sent over to your friend to run some sweet Ansible script you just wrote regardless of Linux Distro, Ansible version, etc, while he sends over his Puppet play with the same container for you both to settle the debate on which is better, while simultaneously encouraging developer adoption of CM by reducing the installation hurdle entirely and readucing workloads org wide (for those of us inside tightly secure environments).  Essentially, toolshop is designed to be dropped into your CI/CD pipeline, at any layer, anywhere in your architecture to simplify calling your tools, while making the maintenance of tool versions across your organization consistent, and software package independent.  If docker will run it, it will go.

It is designed to be plug and played into an existing CI/CD architecture, or to be run locally from your machine you are configuring things with  locally, or things afar.  The idea here is to automate away the install and use of CM tools internal to an infrastructure so all team members can focus on the code and whats being written.  It is intended to be managed within an existing CI/CD pipeline (as I will describe and show) that is complete and builds toolshop as if it is an industry best practice software application itself being packaged up into a Docker container.  Think of it as a rolling chair in an office bouncing from desk to desk pushing code being written in each location wherever it needs to go.

## Features:

- Version control ALL of your DevOps tooling in one place, organization wide.  You can use what tool you want, but keeping up pace with everyone else's version is now a collective responsibilty with no silos.
- Portability, deploy to any system that can run docker containers, and keep commonly used pieces of code across your infrastructure available across the entire architecture.
- Multi-tool usage.  No matter your DevOps teams favorite tool to get the job done, end the debate!
- Injectiability.  Inject into any stage or step into your DevOps pipeline to change a server config or manage a system your app uses.  True IaC and Idempotency.
- Customizability.  Customize the size, shape, or usage of your toolshop container.  Don't use puppet? It won't install! Saving you time and space.
- Peacemaking.  Take operations management of the service off the Ops team, or put it right back on! Either way toolshop makes the handoff easy.



