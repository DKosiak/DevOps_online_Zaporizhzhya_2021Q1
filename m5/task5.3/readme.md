# Task 5.2

## Part 1

### 1

Process in Linux has next states

Running
Sleeping
Stopped 
Zombie

```sh
root@test:~# top
top - 22:32:44 up  1:29,  0 users,  load average: 0.52, 0.58, 0.59
Tasks:   6 total,   1 running,   5 sleeping,   0 stopped,   0 zombie
```

### 2

```sh
dimka@test:~$ pstree -hap
init,1 ro
  ├─init,8 ro
  │   └─bash,9
  │       └─pstree,237 -hap
  └─{init) S 0 1 1 0 ,7
```

### 3,4

```sh
dimka@test:~$  cat /proc/cpuinfo
processor       : 0
vendor_id       : AuthenticAMD
cpu family      : 21
model           : 48
model name      : AMD Athlon(tm) X4 840 Quad Core Processor
stepping        : 1
microcode       : 0xffffffff
cpu MHz         : 3100.000
cache size      : 2048 KB
physical id     : 0
siblings        : 4
core id         : 0
cpu cores       : 2
apicid          : 0
initial apicid  : 0
fpu             : yes
fpu_exception   : yes
cpuid level     : 21
wp              : yes
....................
```

```sh
dimka@test:~$  cat /proc/cpuinfo
processor       : 0
vendor_id       : AuthenticAMD
cpu family      : 21
model           : 48
model name      : AMD Athlon(tm) X4 840 Quad Core Processor
stepping        : 1
microcode       : 0xffffffff
cpu MHz         : 3100.000
cache size      : 2048 KB
physical id     : 0
siblings        : 4
core id         : 0
cpu cores       : 2
apicid          : 0
initial apicid  : 0
fpu             : yes
fpu_exception   : yes
cpuid level     : 21
wp              : yes
```

### 5

```sh 
dimka@test:~$ ps fax
  PID TTY      STAT   TIME COMMAND
    1 ?        Ssl    0:00 /init ro
    8 tty1     Ss     0:00 /init ro
    9 tty1     S      0:00  \_ -bash
  243 tty1     R      0:00      \_ ps fax
```

```sh
dimka@SEWAN-DutyUA:~$ ps axjf
 PPID   PID  PGID   SID TTY      TPGID STAT   UID   TIME COMMAND
    0     1     1     1 ?            0 Ssl      0   0:00 /init ro
    1     8     8     8 tty1         0 Ss       0   0:00 /init ro
    8     9     9     8 tty1         0 S     1000   0:00  \_ -bash
    9   282   282     8 tty1         0 R     1000   0:00      \_ ps axjf
```

### 6

Kernel process:

```sh
sudo ps --ppid=2 --pid=2
```

User porcess^

```sh
sudo ps -N  --ppid=2 --pid=2
```


### 9 

```sh
dimka@SEWAN-DutyUA:~$ ps ajx -u dimka
 PPID   PID  PGID   SID TTY      TPGID STAT   UID   TIME COMMAND
    0     1     1     1 ?            0 Ssl      0   0:00 /init ro
    1     8     8     8 tty1         0 Ss       0   0:00 /init ro
    8     9     9     8 tty1         0 S     1000   0:00 -bash
    9   341   341     8 tty1         0 R     1000   0:00 ps ajx -u dimka
```

### 12 

```sh
dimka@SEWAN-DutyUA:~$ top -u dimka
top - 23:05:56 up  2:02,  0 users,  load average: 0.52, 0.58, 0.59
Tasks:   4 total,   1 running,   3 sleeping,   0 stopped,   0 zombie
%Cpu(s):  9.0 us,  4.3 sy,  0.0 ni, 86.6 id,  0.0 wa,  0.1 hi,  0.0 si,  0.0 st
KiB Mem :  8330724 total,  1458680 free,  6635568 used,   236476 buff/cache
KiB Swap: 25165824 total, 24648412 free,   517412 used.  1554300 avail Mem
```
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
    9 dimka     20   0   15084   3616   3508 S   0.0  0.0   0:00.71 bash
  342 dimka     20   0   15912   1924   1368 R   0.0  0.0   0:00.01 top

## Part 2

####### To be continued ....

