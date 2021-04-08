
# Task 1
## Part 1
#### 1-2 
Command passwd can change user password, lock, inlock, delete account
When you change password for user it changes file /etc/shadow, where system save encryptes passwords for users.

#### 3 We can you use next commands for show users registred in the system:
passwd -S -a 
cat /etc/passwd

#### 4
For change info for user account we can use command chfn: 

```sh
root@ITMC-W-00042:~# chfn dimka
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
root@ITMC-W-00042:~# passwd -S
root L 05/21/2019 0 99999 7 -1
```

and if we use 2 keys toghether such as -S -a it shows info about all users

```sh
root@ITMC-W-00042:~# passwd -S -a
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
root@ITMC-W-00042:~# finger dimka
Login: dimka                            Name: Dmytro
Directory: /home/dimka                  Shell: /bin/bash
Office: 113, x1903
Last login Thu Apr  8 13:15 (EEST) on pts/0 from 10.139.33.22
No mail.
No Plan.
```

#### 8 

Command ls with list of files, including hidden files and in human readable format:

```sh
root@ITMC-W-00042:~# ls -lah
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