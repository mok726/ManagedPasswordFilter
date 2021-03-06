﻿#Here AL installs a lab with one domain controller and one client. The OS can be configured quite easily as well as
#the domain name or memory. AL takes care about network settings like in the previous samples.

New-LabDefinition -Name 'PasswordFilterTest' -DefaultVirtualizationEngine HyperV

Add-LabMachineDefinition -Name pDC1 -Memory 1GB -OperatingSystem 'Windows Server 2012 R2 Datacenter (Server with a GUI)' -Roles RootDC -DomainName contoso.com
Add-LabMachineDefinition -Name pDC2 -Memory 1GB -OperatingSystem 'Windows Server 2012 R2 Datacenter (Server with a GUI)' -Roles DC -DomainName contoso.com
Add-LabMachineDefinition -Name pDC3 -Memory 1GB -OperatingSystem 'Windows Server 2012 R2 Datacenter (Server with a GUI)' -Roles DC -DomainName contoso.com
Add-LabMachineDefinition -Name pClient1 -Memory 1GB -OperatingSystem 'Windows 10 Pro' -DomainName contoso.com

Install-Lab

Checkpoint-LabVM -All -SnapshotName AfterBuild

Show-LabDeploymentSummary -Detailed
