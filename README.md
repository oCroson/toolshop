# toolshop

## Description:
Toolshop is a "docker container command-line tool, and CI/CD config job runner" for managing all your devops related tooling, it is essentially a version controlled configuration management manager designed to simplify the management of your configuration management profiles, tool versions, and tool calling internal to your SRE or DevOps environment.  It is made to be sent over to your friend to run some sweet Ansible script you just wrote regardless of Linux Distro, Ansible version, etc, while he sends over his Puppet play with the same container for you both to settle the debate on which is better, while simultaneously encouraging developer adoption of CM by reducing the installation hurdle entirely and readucing workloads org wide (for those of us inside tightly secure environments).  Essentially, toolshop is designed to be dropped into your CI/CD pipeline, at any layer, anywhere in your architecture to simplify calling your tools, while making the maintenance of tool versions across your organization consistent, and software package independent.  If docker will run it, it will go.

It is designed to be plug and played into an existing CI/CD architecture, or to be run locally from your machine you are configuring things with  locally, or things afar.  The idea here is to automate away the install and use of CM tools internal to an infrastructure so all team members can focus on the code and whats being written.  It is intended to be managed within an existing CI/CD pipeline (as I will describe and show) that is complete and builds toolshop as if it is an industry best practice software application itself being packaged up into a Docker container.  Think of it as a rolling chair in an office bouncing from desk to desk pushing code being written in each location wherever it needs to go.

## Important:

I am also using toolshop as a way to display and to prove what I consider "best practice" for running an operations team's configuration management repositories.  The "Ops Model" as I call it that employs this method uses an environment centric approach to calling information to be configured onto remote systems, allowing a one stop shop CM source for most of an organizations needs.  This model, which will be described in the ops model example even allows for customization of which version of each toolsets run across an organization.  So even if you don't want the feature provided by toolshop of automated consistency of versions across your entire organization managed for you, you can still use the Ops repo management model to ensure specific environments are working with specific versions of code.  The only downside I currently see to this system is older roles and plays will need to live inside their environments and specific versions of toolshop would need to be maintained in those "sub-environment ops repos".  This will all make more sense if you read the Ops Repo Model Example repository located here: https://github.com/oCroson/ops_repo_example, when it is written of course.

## Features:

- Version control ALL of your DevOps tooling in one place, organization wide.  You can use what tool you want, but keeping up pace with everyone else's version is now a collective responsibilty with no silos.
- Portability, deploy to any system that can run docker containers, and keep commonly used pieces of code across your infrastructure available across the entire architecture.
- Multi-tool usage.  No matter your DevOps teams favorite tool to get the job done, end the debate!
- Injectiability.  Inject into any stage or step into your DevOps pipeline to change a server config or manage a system your app uses.  True IaC and Idempotency.
- Customizability.  Customize the size, shape, or usage of your toolshop container.  Don't use puppet? It won't install! Saving you time and space.
- Peacemaking.  Take operations management of the service off the Ops team, or put it right back on! Either way toolshop makes the handoff easy.

## Shortcomings:

- Currently, even though I state otherwise above, I do not have "sub environment dated version control" working as intended.
- It isn't finished!
- It wants you to manage versions manually by default in the event you write some automation that runs out of date.  While it could always stay latest for you, depending on the size of your organization this may accidentally create large swaths of unexpected work if a team doesnt use the tool but has CM plays being utilized.



