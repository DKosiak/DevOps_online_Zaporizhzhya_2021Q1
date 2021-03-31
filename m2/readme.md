# Task 2
# Task2.1
The most popular Hypervisors for infrastrucute virtualzation are VMWARE and Hyper-V. If we want to use cloud Virtualization the best way would be use Amazon AWS or Microsoft Azure. 

## What was done in Task 2 Part 2

First of all I've downloaded and install VirtualBox and according to points of task was doing needed action.

> I've created VM's:
Create VM1_Kosiak and clone it via GUI and VBoxManage to VM2_Kosiak. 
![Link to 1.1-1.5](task2.1/Task2.1p2p1.1-1.5.jpg)

> Create group of VM's where put VM1 and VM2 and try to start, reboot, stop togeher and independently. 
![Link to 1.6](task2.1/Task2.1p2p1.6.jpg)

> For VM2 I've done tree of snapshots like git brunches for testing this technology.

![Link to 1.7](task2.1/Task2.1p2p1.7.jpg)

> I've done export VM1 to *.ova file and import it in another VM.

![Link to 1.8-export](task2.1/Task2.1p2p1.8-export.jpg)
![Link to 1.8-import](task2.1/Task2.1p2p1.8-import.jpg)

> For testing features of VirtualBox I've attached USB and Shared Folder to excahange data between VM and host machine. 

![Link to 2.2](task2.1/Task2.1p2p2.2.jpg)
![Link to 2.3](task2.1/Task2.1p2p2.3.jpg)

 Task 2.1 to ne continued ... ASAP

# Task 2.2

Investigating possibilities of AWS accroding Task plan

> I've created VM on AWS using Lighstail and without it.

![Link to 2.5](task2.2/task2.2p5.jpg)
 
> Made Snapshot

![Link to 2.6](task2.2/task2.2p6.jpg)
![Link to 2.6-1](task2.2/task2.2p6-1.jpg)

> Prepared it for launch new instances

![Link to 2.6-2](task2.2/task2.2p6-2.jpg)

> Created new Volume D, attach it to first VM, made fs on it, mounted and added file.

![Link to 2.7-1](task2.2/task2.2p7-1.jpg)
![Link to 2.7-2](task2.2/task2.2p7-2.jpg)

> Launched second VM from backup.

![Link to 2.8](task2.2/task2.2p8.jpg)

> Reatach Volume D from VM1 to VM2 and check is it all correct.
 
![Link to 2.9](task2.2/task2.2p9.jpg)

> Investigating S3 instruments. Add bucket and push files to there using GUI and CLI

![Link to 2.11-1](task2.2/task2.2p11-12.jpg)
![Link to 2.11-2](task2.2/task2.2p11-12-2.jpg)

> Tried to deploy Docker containers on Amazon ESC.

![Link to 2.14](task2.2/task2.2p14.jpg)

> And made static website on Amazon S3 [EPAM DevOps  online Spring 2021]

[EPAM DevOps  online Spring 2021]http://dkosiak-bucket1.s3-website.us-east-2.amazonaws.com/
