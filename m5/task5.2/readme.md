# Task 5.2

### 1

Structure /etc/passwd
```sh
dmytro:x:1000:1000:,,,:/home/dmytro:/bin/bash
```
LoginName: x - sasid about encrypted password: User Identifier : Group Identifier : Personal Info : Home directory : Shell

Structure /etc/group 
```sh
dmytro:x:1000:
```
Group Name: x - sasid about encrypted password: Group Identifier : Group Members

### 2,3 

```sh
dmytro@test:~$ id
uid=1000(dmytro) gid=1000(dmytro) groups=1000(dmytro),4(adm),20(dialout),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),109(netdev),110(lxd)
```

###### uid=1000(dmytro) 
###### gid=1000(dmytro)

### 4 

```sh
root@test:~# groups dimka
dimka : dimka adm dialout cdrom floppy sudo audio dip video plugdev netdev lxd
``

### 5 

The main command for adding user into the system is adduser and  the main parameters its User name and Password

### 6 

For change User name we can use command usrmode with key -l 

```sh
sudo usermod -l newUsername oldUsername
```

### 7

  skell_dir - its dir where palced default profile for new accounts

```sh
root@test:~# ls -la /etc/skel
total 8
drwxr-xr-x 1 root root  512 Jul 11  2017 .
drwxr-xr-x 1 root root  512 Apr 18 21:02 ..
-rw-r--r-- 1 root root  220 Sep  1  2015 .bash_logout
-rw-r--r-- 1 root root 3771 Sep  1  2015 .bashrc
-rw-r--r-- 1 root root  655 May 16  2017 .profile 
``` 

### 8

For delete user from the system including his maibox we can use command usrdel with key -encrypted

```sh
userdel -r dmytro
````

### 9 

Lock account:

```sh   
passwd -l dmytro
usermod -l dmytro
```

Unlock account:

```sh
passwd -u username
usermod -u username
```

### 10

For remove User password and provide him use ne password we can use command passwd with keys -d and -e:

```sh
dimka@test:~$ sudo passwd -d dmytro
[sudo] password for dimka:
passwd: password expiry information changed.
dimka@test:~$ sudo passwd -e dmytro
passwd: password expiry information changed.

dimka@test:~$ su - dmytro
Password:
You are required to change your password immediately (root enforced)
Changing password for dmytro.
(current) UNIX password:
Enter new UNIX password:
```

### 11

```sh
dimka@test:~$ ls -la
total 12
drwxr-xr-x 1 dimka dimka  512 Jun 13  2019 .
drwxr-xr-x 1 root  root   512 Apr 18 21:47 ..
-rw------- 1 root  root  1776 Apr 18 21:47 .bash_history
-rw-r--r-- 1 dimka dimka  220 Jun 13  2019 .bash_logout
-rw-r--r-- 1 dimka dimka 3771 Jun 13  2019 .bashrc
-rw-r--r-- 1 dimka dimka  655 Jun 13  2019 .profile
-rw-r--r-- 1 dimka dimka    0 Jun 13  2019 .sudo_as_admin_successful
```

### 12 

r - read
w - write
x - execute

### 14 

chown - command used to change the owner

```sh
root@test:~# ls -l
total 0
-rw-r--r-- 1 root root 0 Apr 18 22:04 test.txt
root@test:~# chown dimka:dimka test.txt
root@test:~# ls -l
total 0
-rw-r--r-- 1 dimka dimka 0 Apr 18 22:04 test.txt
```

chmod - command used to change the mode of access to the file

```sh
root@test:~# ls -l
total 0
-rw-r--r-- 1 dimka dimka 0 Apr 18 22:04 test.txt
root@test:~# chmod o+w test.txt
root@test:~# ls -l
total 0
-rw-r--rw- 1 dimka dimka 0 Apr 18 22:04 test.txt
```

### 15 

```sh
root@test:~# touch test_umask1.txt
root@test:~# ls -l
total 0
-rw-r--r-- 1 root  root  0 Apr 18 22:13 test_umask1.txt
root@test:~# umask 0077
root@test:~# touch test_umask2.txt
root@test:~# ls -l
total 0
-rw-r--r-- 1 root  root  0 Apr 18 22:13 test_umask1.txt
-rw------- 1 root  root  0 Apr 18 22:13 test_umask2.txt
```
 
