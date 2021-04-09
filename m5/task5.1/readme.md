
# Task 1

## Part 1

#### 1-2 
Command passwd can change user password, lock, inlock, delete account
When you change password for user it changes file /etc/shadow, where system save encryptes passwords for users.

#### 3 
We can you use next commands for show users registred in the system:

passwd -S -a 
cat /etc/passwd

#### 4
For change info for user account we can use command chfn: 

```sh
root@test-Ubuntu-WSL:~# chfn dimka
Changing the user information for dimka
Enter the new value, or press ENTER for the default
        Full Name []: Dmytro
        Room Number []: 113
        Work Phone []: 1903
        Home Phone []:
        Other []:
```
		
Result:

```sh
dimka:x:1000:1000:Dmytro,113,1903,:/home/dimka:/bin/bash
```

#### 5
For receive manual we can use command man or in most cases use key -h (shows short info about internal keys)

Like example:
command passwd with key S - shows information about current user 

```sh
root@test-Ubuntu-WSL:~# passwd -S
root L 05/21/2019 0 99999 7 -1
```

and if we use 2 keys toghether such as -S -a it shows info about all users

```sh
root@test-Ubuntu-WSL:~# passwd -S -a
root L 05/21/2019 0 99999 7 -1
daemon L 05/21/2019 0 99999 7 -1
bin L 05/21/2019 0 99999 7 -1
dimka P 02/06/2020 0 99999 7 -1
..........................
```

#### 6

.bash_history - contains history of used commands by current user

.bash_logout - contains parametrs for bash shell

.bashrc - contains logout parametrs for bash shell

#### 7 

Result of execution command finger: 
```sh
root@test-Ubuntu-WSL:~# finger dimka
Login: dimka                            Name: Dmytro
Directory: /home/dimka                  Shell: /bin/bash
Office: 113, x1903
Last login Thu Apr  8 13:15 (EEST) on pts/0 from 192.168.33.22
No mail.
Plan:
It's my homework for Linux Fundamentals lection
```

#### 8 

Command ls with list of files, including hidden files and in human readable format:

```sh
root@test-Ubuntu-WSL:~# ls -lah
total 1.1G
drwxr-xr-x 1 dimka dimka  512 Mar 30 12:51 .
drwxr-xr-x 1 root  root   512 Apr  3  2020 ..
-rw------- 1 dimka dimka  19K Apr  8 13:15 .bash_history
-rw-r--r-- 1 dimka dimka  220 Feb  6  2020 .bash_logout
-rw-r--r-- 1 dimka dimka 3.7K Feb  6  2020 .bashrc
drwx------ 1 dimka dimka  512 Feb 12  2020 .cache
drwx------ 1 dimka dimka  512 Feb 12  2020 .config
-rw-r--r-- 1 root  root    55 Mar 17 09:31 .gitconfig
drwx------ 1 dimka dimka  512 Feb 12  2020 .local
-rw------- 1 root  root  5.1K Mar 30 12:51 .mysql_history
-rw-r--r-- 1 dimka dimka  807 Feb  6  2020 .profile
-rw-r--r-- 1 root  root    72 Mar 17  2020 .selected_editor
drwx------ 1 dimka dimka  512 Feb 12  2020 .ssh
-rw-r--r-- 1 dimka dimka    0 Feb  6  2020 .sudo_as_admin_successful
-rw------- 1 root  root   21K Mar 18 19:48 .viminfo
drwxr-xr-x 1 root  root   512 Mar 30 12:42 DevOps_online_Zaporizhzhya_2021Q1
```

## Part 2

#### 1

##### Examples for command tree

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# tree
.
├── README.md
├── m1
│   └── task1.1
│       ├── images
│       │   ├── minion.jpg
│       │   ├── smile.jpg
│       │   └── tiger.jpg
│       ├── index.html
│       ├── readme.md
│       ├── readme.txt
│       ├── styles
│       │   └── styles.css
│       └── task1.1_git.txt
├── m2
│   ├── readme.md
│   ├── task2.1
│   │   ├── Task2.1p2p1.1-1.5.jpg
│   │   ├── Task2.1p2p1.6.jpg
│   │   ├── Task2.1p2p1.7.jpg
│   │   ├── Task2.1p2p1.8-export.jpg
│   │   ├── Task2.1p2p1.8-import.jpg
│   │   ├── Task2.1p2p2.2.jpg
│   │   ├── Task2.1p2p2.3.jpg
│   │   └── readme.md
│   └── task2.2
│       ├── readme.md
│       ├── task2.2p11-12-2.jpg
│       ├── task2.2p11-12.jpg
│       ├── task2.2p14.jpg
│       ├── task2.2p5.jpg
│       ├── task2.2p6-1.jpg
│       ├── task2.2p6-2.jpg
│       ├── task2.2p6.jpg
│       ├── task2.2p7-1.jpg
│       ├── task2.2p7-2.jpg
│       ├── task2.2p8.jpg
│       └── task2.2p9.jpg
├── m3
│   ├── readme.md
│   └── task3.1
│       ├── DKL.sql
│       ├── task3.1p13.jpg
│       └── task3.1p16.jpg
├── m4
│   ├── readme.md
│   ├── task4.1
│   │   ├── task4.1.pkt
│   │   ├── task4.1p1-1.jpg
│   │   ├── task4.1p1-2.jpg
│   │   ├── task4.1p1-3.jpg
│   │   ├── task4.1p1-4.jpg
│   │   ├── task4.1p1.pkt
│   │   ├── task4.1p17.jpg
│   │   ├── task4.1p22.jpg
│   │   └── task4.1p3.pkt
│   ├── task4.2
│   │   ├── task4.2p1-1.jpg
│   │   ├── task4.2p1-2.jpg
│   │   ├── task4.2p1-3.jpg
│   │   ├── task4.2p1.pkt
│   │   ├── task4.2p2-1.jpg
│   │   ├── task4.2p2-2.jpg
│   │   ├── task4.2p2-v2.pkt
│   │   ├── task4.2p3-1.jpg
│   │   └── task4.2p3-2.jpg
│   ├── task4.3
│   │   ├── task4.3-v2.pkt
│   │   └── task4.3.jpg
│   └── task4.4
│       ├── task4.4.jpg
│       └── task4.4.pkt
└── m5
    └── task5.1
        └── readme.md

16 directories, 58 files
```

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# tree -L 2
.
├── README.md
├── m1
│   └── task1.1
├── m2
│   ├── readme.md
│   ├── task2.1
│   └── task2.2
├── m3
│   ├── readme.md
│   └── task3.1
├── m4
│   ├── readme.md
│   ├── task4.1
│   ├── task4.2
│   ├── task4.3
│   └── task4.4
└── m5
    └── task5.1

14 directories, 4 files
```

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# tree  -P read*
.
├── m1
│   └── task1.1
│       ├── images
│       ├── readme.md
│       ├── readme.txt
│       └── styles
├── m2
│   ├── readme.md
│   ├── task2.1
│   │   └── readme.md
│   └── task2.2
│       └── readme.md
├── m3
│   ├── readme.md
│   └── task3.1
├── m4
│   ├── readme.md
│   ├── task4.1
│   ├── task4.2
│   ├── task4.3
│   └── task4.4
└── m5
    └── task5.1
        └── readme.md

16 directories, 8 files
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# tree  -P read* -I task*
.
├── m1
├── m2
│   └── readme.md
├── m3
│   └── readme.md
├── m4
│   └── readme.md
└── m5

5 directories, 3 files
```

#### 2

The command that can be used to detremine the type of file is "file":

Esamples:

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# file README.md
README.md: ASCII text

root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# file /m1/task1.1/images/smile.jpg
/m1/task1.1/images/smile.jpg: cannot open `/m1/task1.1/images/smile.jpg' (No such file or directory)

root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# file /usr/bin/tree
/usr/bin/tree: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=fd8c261a6ac7e829e1aa6763b3955b6ea1699712, stripped
```

#### 3 

For go back to my home directory the best way use command cd without arguments:

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# pwd
/home/dimka/DevOps_online_Zaporizhzhya_2021Q1
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1# cd
root@test-Ubuntu-WSL:~# pwd
/home/dimka
```

#### 4 

Command ls with list of files, including hidden files and in human readable format:

```sh
root@test-Ubuntu-WSL:~# ls -lah
total 1.1G
drwxr-xr-x 1 dimka dimka  512 Mar 30 12:51 .
drwxr-xr-x 1 root  root   512 Apr  3  2020 ..
-rw------- 1 dimka dimka  19K Apr  8 13:15 .bash_history
-rw-r--r-- 1 dimka dimka  220 Feb  6  2020 .bash_logout
-rw-r--r-- 1 dimka dimka 3.7K Feb  6  2020 .bashrc
drwx------ 1 dimka dimka  512 Feb 12  2020 .cache
drwx------ 1 dimka dimka  512 Feb 12  2020 .config
-rw-r--r-- 1 root  root    55 Mar 17 09:31 .gitconfig
drwx------ 1 dimka dimka  512 Feb 12  2020 .local
-rw------- 1 root  root  5.1K Mar 30 12:51 .mysql_history
-rw-r--r-- 1 dimka dimka  807 Feb  6  2020 .profile
-rw-r--r-- 1 root  root    72 Mar 17  2020 .selected_editor
drwx------ 1 dimka dimka  512 Feb 12  2020 .ssh
-rw-r--r-- 1 dimka dimka    0 Feb  6  2020 .sudo_as_admin_successful
-rw------- 1 root  root   21K Mar 18 19:48 .viminfo
drwxr-xr-x 1 root  root   512 Mar 30 12:42 DevOps_online_Zaporizhzhya_2021Q1
```

#### 5

Create a subdirectory in the home directory

```sh
root@test-Ubuntu-WSL:~# mkdir task5part2point5
```

in this subdirectory create a file containing information about directories 
located in 

```sh
root@test-Ubuntu-WSL:~# tree DevOps_online_Zaporizhzhya_2021Q1 > task5part2point5/tree_example.txt
```

view the created file

```sh
root@test-Ubuntu-WSL:~# cat task5part2point5/tree_example.txt
DevOps_online_Zaporizhzhya_2021Q1
+-- README.md
+-- m1
¦   +-- task1.1
¦       +-- images
¦       ¦   +-- minion.jpg
¦       ¦   +-- smile.jpg
¦       ¦   +-- tiger.jpg
¦       +-- index.html
¦       +-- readme.md
¦       +-- readme.txt
¦       +-- styles
¦       ¦   +-- styles.css
¦       +-- task1.1_git.txt
+-- m2
¦   +-- readme.md
¦   +-- task2.1
¦   ¦   +-- Task2.1p2p1.1-1.5.jpg
¦   ¦   +-- Task2.1p2p1.6.jpg
¦   ¦   +-- Task2.1p2p1.7.jpg
¦   ¦   +-- Task2.1p2p1.8-export.jpg
¦   ¦   +-- Task2.1p2p1.8-import.jpg
¦   ¦   +-- Task2.1p2p2.2.jpg
¦   ¦   +-- Task2.1p2p2.3.jpg
¦   ¦   +-- readme.md
¦   +-- task2.2
¦       +-- readme.md
¦       +-- task2.2p11-12-2.jpg
¦       +-- task2.2p11-12.jpg
¦       +-- task2.2p14.jpg
¦       +-- task2.2p5.jpg
¦       +-- task2.2p6-1.jpg
¦       +-- task2.2p6-2.jpg
¦       +-- task2.2p6.jpg
¦       +-- task2.2p7-1.jpg
¦       +-- task2.2p7-2.jpg
¦       +-- task2.2p8.jpg
¦       +-- task2.2p9.jpg
+-- m3
¦   +-- readme.md
¦   +-- task3.1
¦       +-- DKL.sql
¦       +-- task3.1p13.jpg
¦       +-- task3.1p16.jpg
+-- m4
¦   +-- readme.md
¦   +-- task4.1
¦   ¦   +-- task4.1.pkt
¦   ¦   +-- task4.1p1-1.jpg
¦   ¦   +-- task4.1p1-2.jpg
¦   ¦   +-- task4.1p1-3.jpg
¦   ¦   +-- task4.1p1-4.jpg
¦   ¦   +-- task4.1p1.pkt
¦   ¦   +-- task4.1p17.jpg
¦   ¦   +-- task4.1p22.jpg
¦   ¦   +-- task4.1p3.pkt
¦   +-- task4.2
¦   ¦   +-- task4.2p1-1.jpg
¦   ¦   +-- task4.2p1-2.jpg
¦   ¦   +-- task4.2p1-3.jpg
¦   ¦   +-- task4.2p1.pkt
¦   ¦   +-- task4.2p2-1.jpg
¦   ¦   +-- task4.2p2-2.jpg
¦   ¦   +-- task4.2p2-v2.pkt
¦   ¦   +-- task4.2p3-1.jpg
¦   ¦   +-- task4.2p3-2.jpg
¦   +-- task4.3
¦   ¦   +-- task4.3-v2.pkt
¦   ¦   +-- task4.3.jpg
¦   +-- task4.4
¦       +-- task4.4.jpg
¦       +-- task4.4.pkt
+-- m5
    +-- task5.1
        +-- readme.md

16 directories, 58 files
```

copy the created file and delete the previously created subdirectory and copied file

```sh
root@test-Ubuntu-WSL:~# cp -v task5part2point5/tree_example.txt  /home/dimka
'task5part2point5/tree_example.txt' -> '/home/dimka/tree_example.txt'
root@test-Ubuntu-WSL:~# cp -v /home/dimka/task5part2point5/tree_example.txt  /home/dimka
'/home/dimka/task5part2point5/tree_example.txt' -> '/home/dimka/tree_example.txt'
root@test-Ubuntu-WSL:~# rm  -rf task5part2point5
root@test-Ubuntu-WSL:~# rm  -rf tree_example.txt
```


#### 7

Using locate utility for file search

```sh
root@test-Ubuntu-WSL:~# locate traceroute
/etc/alternatives/traceroute6
/etc/alternatives/traceroute6.8.gz
/usr/bin/traceroute6
/usr/bin/traceroute6.iputils
/usr/share/man/man8/traceroute6.8.gz
/usr/share/man/man8/traceroute6.iputils.8.gz
/var/lib/dpkg/alternatives/traceroute6
root@test-Ubuntu-WSL:~# locate squid
/mnt/c/Program Files/Git/usr/share/vim/vim82/syntax/squid.vim
/usr/share/lxc/hooks/squid-deb-proxy-client
/usr/share/sosreport/sos/plugins/squid.py
/usr/share/sosreport/sos/plugins/__pycache__/squid.cpython-36.pyc
/usr/share/vim/vim80/syntax/squid.vim
```

#### 8 

Info about mounted partitions 
 
```sh
root@test-Ubuntu-WSL:~# mount
rootfs on / type lxfs (rw,noatime)
none on /dev type tmpfs (rw,noatime,mode=755)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,noatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,noatime)
devpts on /dev/pts type devpts (rw,nosuid,noexec,noatime,gid=5,mode=620)
none on /run type tmpfs (rw,nosuid,noexec,noatime,mode=755)
none on /run/lock type tmpfs (rw,nosuid,nodev,noexec,noatime)
none on /run/shm type tmpfs (rw,nosuid,nodev,noatime)
none on /run/user type tmpfs (rw,nosuid,nodev,noexec,noatime,mode=755)
binfmt_misc on /proc/sys/fs/binfmt_misc type binfmt_misc (rw,relatime)
tmpfs on /sys/fs/cgroup type tmpfs (rw,nosuid,nodev,noexec,relatime,mode=755)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
C:\ on /mnt/c type drvfs (rw,noatime,uid=1000,gid=1000,case=off)
D:\ on /mnt/d type drvfs (rw,noatime,uid=1000,gid=1000,case=off)

root@test-Ubuntu-WSL:~# cat /etc/fstab
LABEL=cloudimg-rootfs   /        ext4   defaults        0 0

root@test-Ubuntu-WSL:~# df -h
Filesystem      Size  Used Avail Use% Mounted on
rootfs          223G   73G  151G  33% /
none            223G   73G  151G  33% /dev
none            223G   73G  151G  33% /run
none            223G   73G  151G  33% /run/lock
none            223G   73G  151G  33% /run/shm
none            223G   73G  151G  33% /run/user
tmpfs           223G   73G  151G  33% /sys/fs/cgroup
C:\             223G   73G  151G  33% /mnt/c
D:\             466G  294G  173G  63% /mnt/d
```

#### 9

Count the number of lines containing a given sequence of characters in a given 
file

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1/m5/task5.1# cat readme.md | grep root -c
13
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1/m5/task5.1# grep 'root' readme.md -c
13
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1/m5/task5.1# cat readme.md | grep root | wc -l
13
```

#### 10 

Using find command

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1/m5/task5.1# find /etc -name host* -type f -print
/etc/cloud/templates/hosts.alpine.tmpl
/etc/cloud/templates/hosts.debian.tmpl
/etc/cloud/templates/hosts.freebsd.tmpl
/etc/cloud/templates/hosts.redhat.tmpl
/etc/cloud/templates/hosts.suse.tmpl
/etc/host.conf
/etc/hostname
/etc/hosts
/etc/hosts.allow
/etc/hosts.deny
```

#### 13

System has next types of device files:

c - character
b - block
p - pipe
s - socket

all connected devices we can see in /dev directory
 for this we can  use next command ls -l /dev

#### 14

System has next types of files:
- : regular file
d : directory
c : character device file
b : block device file
s : local socket file
p : named pipe
l : symbolic link

for this we can  use next command ls -l
it will show the file type as an encoded symbol found as the first character of the file permission part

#### 15 
 List the first 5 directory files that were recently accessed in the /etc
directory 

```sh
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1/m5/task5.1# ls -lh /etc | grep  'Apr  8' |   head -5
-rw-r--r-- 1 root root        13 Apr  8 10:55 hostname
lrwxrwxrwx 1 root root        31 Apr  8 10:55 localtime -> /usr/share/zoneinfo/Europe/Kiev
-rw-r--r-- 1 root root      1.7K Apr  8 12:39 passwd
-rw-r--r-- 1 root root        12 Apr  8 10:55 timezone
-rw-r--r-- 1 root root      4.9K Apr  8  2019 wgetrc
```

```
root@test-Ubuntu-WSL:~/DevOps_online_Zaporizhzhya_2021Q1/m5/task5.1# find /etc -newermt "yesterday"  | head -5
/etc
/etc/hostname
/etc/localtime
/etc/passwd
/etc/timezone
```