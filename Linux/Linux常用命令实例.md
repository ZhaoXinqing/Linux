# Linux
	- 登录：Zhao0216
	- 清屏：clear



// 仅打包，不压缩
tar -cvf /home/w/images.tar /home/w/images
// 打包后，以gzip压缩
tar -zcvf /home/w/images.tar.gz /home/w/images
// 解压tgz
tar zxvf test.tgz -C 指定目录



	- 【查看文件树结构】
		安装tree: sudo apt-get install tree
		使用方法及参数：tree -d -L 1
			注：
				tree：显示目录树；
				-d：只显示目录；
				-L：选择显示的目录深度；
				1：只显示一层深度，即不递归子目录；



常见Linux命令；
    0、日常用
        yum – 基于RPM的软件包管理器/apt-get install/update
        clear – 清屏、
        grep – 强大的文本搜索工具
        日期：data；
        日历：cal；
        关机：shutdown；
        重启，关机：rebote,halt,poweroff
    1.文件管理
        ls - 显示指定工作目录下的内容及属性信息
        mkdir - 创建目录
        cp - 复制文件或目录
        pwd - 显示文件路径
        mv - 移动或改名文件
    2.文档编辑
        cat - 在终端设备上显示文件内容
        echo - 输出字符串或提取Shell变量的值
        rm - 移除文件或目录
        tail - 查看文件尾部内容
        rmdir - 删除空目录
    3.系统管理
        startx - 初始化X-windows
        vmstat - 显示虚拟内存状态
        rpm - RPM软件管理包
        find - 查找和搜索文件
        uname - 显示系统信息
    4.磁盘管理
        df - 显示磁盘空间使用情况
        fdisk - 磁盘分区
        hdparm - 显示与设定硬盘参数
        lsblk - 查看系统的磁盘
        vgextend - 扩展卷组
    5.文件传输
        tftp - 上传及下载文件
        curl - 文件传输工具
        fsck - 检查并修复Linux文件系统
        ftpwho - 显示ftp会话信息
        iprm - 删除打印队列中的打印任务
    6.网络通信
        ssh - 安全连接客户端
        ping - 测试主机间网络连通性
        netstat - 显示网络状态
        ifconfig - 显示或设置网络设备
        ss - 显示活动套接字信息
    7、系统监控：
        free - 显示系统中物理上的空闲和已用内存，还有交换内存，同时，也能显示被内核使用的缓冲和缓存
        ulimit - 显示系统资源限制的信息
        top - 实时动态地查看系统的整体运行情况，是一个综合了多方信息检测系统性能和运行信息的实用工具
        df - 显示磁盘空间使用情况
        ps - 查看进程统计信息
    8、网络通信：
        重启网络 - service network restart
        netstat - 用于监控进出网络的包和网络接口统计的命令行工具 
        SELinux - Security-Enhanced Linux，功能类似防火墙，不过安全相对比较好
    9、系统管理：
        uname - 查看内核版本
        ip addr - 查看linux的ip地址++
    10、查看剩余内存
        Top：查看系统进程，显示系统内存；
        free：Linux下查看内存额的专用工具命令； 

1.w
    - 对，你没看错，就是 w 命令。使用该命令我们可以查看到当前登录系统的用户是谁，以及执行了哪些命令。

2.nmon
    - Nmon 是一个可以监控当前系统性能的小工具，使用之前需要先用如下命令进行安装：sudo apt-get install nmon
    - 安装好后执行 nmon 命令即可打开：
    - nmon 可以查看网络、CPU、内存和磁盘的使用情况。
        - 打开之后按 c 查看 CPU 信息：
        - 打开之后按 n 查看网络信息：
3、dstat
    - dstat 是一个可以非常灵活使用和进行组合使用的工具，它可用于监控内存、进行、网络及磁盘性能，可用于替代  ifstat、iostat、dmstat等工具。使用之前需先执行如下命令进行安装：apt-get install dstat
    - 执行 dstat 命令可以看到所有监控数据：
        - 其可选参数非常多，常用的有：
            ◆dstat -c ： 监控CPU
            ◆dstat -cdl -D sda1 ：监控CPU详细信息
            ◆dstat -d ：监控磁盘
    
- Ctrl + c 暂停程序


绝对路径：如/etc/init.d
当前目录和上层目录：./ ../
主目录：~/
切换目录：cd

查看当前进程：ps
查看当前路径：pwd

清屏：clear
退出当前命令：ctrl+c
执行睡眠 ：ctrl+z 挂起当前进程fg 恢复后台
查看当前用户 id：查看显示目前登陆账户的 uid 和 gid 及所属分组及用户名
查看指定帮助：man adduser 很全，而且有例子；adduser --help 告诉一些常用参数；info adduesr；

ls ：列出指定目录中的，目录以及文件
哪些参数：-a 所有文件，-l 详细信息，包括大小字节数，可读可写可执行的权限等

建立软链接：ln -s slink source
建立硬链接：ln link source

创建目录：mkdir
创建文件：典型touch，vi 也可以
复制文件：cp 

文件权限修改：chmod
$ chmod u+x file 给 file 的属主增加执行权限
$ chmod 751 file 给 file 的属主分配读、写、执行(7)的权限，给 file 的所在组分配读、执行(5)的权限，给其他用户分配执行(1)的权限
$ chmod u=rwx,g=rx,o=x file 上例的另一种形式
$ chmod =r file 为所有用户分配读权限
$ chmod 444 file 同上例
$ chmod a-wx,a+r file同上例
$ chmod -R u+r directory 递归地给 directory 目录下所有文件和子目录的属主分配读的权限
查看文件内容：
vi 文件名，编辑方式查看，可修改文件
cat 文件名，显示全部文件内容
more 文件名，分页显示文件内容
less 文件名，与 more 相似，更好的是可以往前翻页
tail 文件名，仅查看尾部，还可以指定行数
head 文件名，仅查看头部，还可以指定行数

写文件命令：vi
向屏幕输出带空格的字符串:echo hello world

终端 /dev/tty
黑洞文件 /dev/null

移动文件：mv
改名: mv

复制文件：cp
连同文件夹一块复制：cp -r 

删除文件：rm
连目录及目录下文件一块删除：rm -r
删除空文件夹：rmdir

通配符：
“？”可替代单个字符。
“*”可替代任意多个字符。
“[charset]”可替代 charset 集中的任何单个字符，如[a-z]，[abABC]

对一个文件的内容进行统计：wc  - c 统计字节数 - l 统计行数 - w 统计字数。

Grep：强大的文本搜索工具，它能使用正则表达式搜索文本，并把匹 配的行打印出来
grep [stringSTRING]  filename grep [^string] filename
Linux 中进程有哪几种状态？
（1）、不可中断状态：进程处于睡眠状态，但是此刻进程是不可中断的。不可中断， 指进程不响应异步信号。
（2）、暂停状态/跟踪状态：向进程发送一个 SIGSTOP 信号，它就会因响应该信号 而进入 TASK_STOPPED 状态;当进程正在被跟踪时，它处于 TASK_TRACED 这个特殊的状态。
“正在被跟踪”指的是进程暂停下来，等待跟踪它的进程对它进行操作。
（3）、就绪状态：在 run_queue 队列里的状态
（4）、运行状态：在 run_queue 队列里的状态
（5）、可中断睡眠状态：处于这个状态的进程因为等待某某事件的发生（比如等待 socket 连接、等待信号量），而被挂起
（6）、zombie 状态（僵尸）：父亲没有通过 wait 系列的系统调用会顺便将子进程的尸体（task_struct）也释放掉
（7）、退出状态
在 ps 显示出来的信息中，分别用什么符号表示的？
1．D 不可中断 Uninterruptible（usually IO）
2．R 正在运行，或在队列中的进程
3．S 处于休眠状态
4．T 停止或被追踪
5．Z 僵尸进程
6．W 进入内存交换（从内核 2.6 开始无效）
7．X 死掉的进程

使一个命令在后台运行：使用 & 在命令结尾来让程序自动运行。(命令后可以不追加空格)


查看后台任务：job -l
把后台任务调到前台执行 fg，
把停下的后台任务在后台执行起来 bg

终止进程用什么命令? 带什么参数?
答案：kill [-s <信息名称或编号>][程序] 或 kill [-l <信息编号>]，kill-9 pid

问题二十三：怎么查看系统支持的所有信号？
答案：kill -l
搜索文件用什么命令? 格式是怎么样的?
1．find <指定目录> <指定条件> <指定动作>
2．whereis 加参数与文件名
3．locate 只加文件名
4．find 直接搜索磁盘，较慢。
5．find / -name "string*"

查找自己所在的终端信息：who am i；
查看当前谁在使用该主机：who

查看用过的命令列表：history

查看磁盘使用空间？空闲空间呢?
答案：df -hl
文件系统 容量 已用 可用 已用% 挂载点
Filesystem Size Used Avail Use% Mounted on /dev/hda2 45G 19G 24G 44% /
/dev/hda1 494M 19M 450M 4% /boot

查看网络连通：netstat
查看 ip 地址及接口信息：ifconfig

查看各类环境变量，查看所有 env；
查看某个，如 home：env $HOME


查找命令的可执行文件是去哪查找的? 怎么对其进行设置及添加?
答案：whereis [-bfmsu][-B <目录>...][-M <目录>...][-S <目录>...][文件...]
补充说明：whereis 指令会在特定目录中查找符合条件的文件。这些文件的烈性应属于原始代码，二进制文件，或是帮助文件。
-b 只查找二进制文件。
-B<目录> 只在设置的目录下查找二进制文件。-f 不显示文件名前的路径名称。
-m 只查找说明文件。
-M<目录> 只在设置的目录下查找说明文件。-s 只查找原始代码文件。
-S<目录> 只在设置的目录下查找原始代码文件。-u 查找不包含指定类型的文件。
which 指令会在 PATH 变量指定的路径中，搜索某个系统命令的位置，并且返回第一个搜索结果。
-n 指定文件名长度，指定的长度必须大于或等于所有文件中最长的文件名。
-p 与-n 参数相同，但此处的包括了文件的路径。-w 指定输出时栏位的宽度。
-V 显示版本信息


du 显示目录或文件的大小
df 显示每个<文件>所在的文件系统的信息，默认是显示所有文件系统。
df 命令获得真正的文件系统数据，而 du 命令只查看文件系统的部分情况。

awk 
awk '{pattern + action}' {filenames}
#cat /etc/passwd |awk -F ':' '{print $1"\t"$7}' //-F 的意思是以':'分隔 root /bin/bash
daemon /bin/sh 搜索/etc/passwd 有 root 关键字的所有行
#awk -F: '/root/' /etc/passwd root:x:0:0:root:/root:/bin/bash

问题三十七：当你需要给命令绑定一个宏或者按键的时候，应该怎么做呢？
答案：
可以使用bind命令，bind可以很方便地在shell中实现宏或按键的绑定。
在进行按键绑定的时候，我们需要先获取到绑定按键对应的字符序列。
比如获取F12的字符序列获取方法如下：先按下Ctrl+V,然后按下F12 .我们就可以得到F12的字符序列 ^[[24~。
接着使用bind进行绑定。
[root@localhost ~]# bind ‘”\e[24~":"date"'
注意：相同的按键在不同的终端或终端模拟器下可能会产生不同的字符序列。
【附】也可以使用showkey -a命令查看按键对应的字符序列。


打印当前的目录栈，使用Linux 命令dirs可以将当前的目录栈打印出来。
[root@localhost ~]# dirs
/usr/share/X11


在不重启机器的条件下，把所有正在运行的进程移除：disown -r 

linux命令’hash’管理着一个内置的哈希表，记录了已执行过的命令的完整路径, 用该命令可以打印出你所使用过的命令以及执行的次数。
[root@localhost ~]# hash
hits command
2 /bin/ls
2 /bin/su

问题四十二：哪一个bash内置命令能够进行数学运算。
答案：bash shell 的内置命令let 可以进行整型数的数学运算。
#! /bin/bash
…
let c=a+b
…

一页一页地查看一个大文件的内容：
[root@localhost ~]# cat file_name.txt | more

怎样查看一个linux命令的概要与用法？假设你在/bin目录中偶然看到一个你从没见过的的命令，怎样才能知道它的作用和用法呢？
答案：使用命令whatis 可以先出显示出这个命令的用法简要，比如，你可以使用whatis zcat 去查看‘zcat’的介绍以及使用简要。
[root@localhost ~]# whatis zcat
zcat [gzip] (1) – compress or expand files

查看自己文件系统的磁盘空间配额：repquota ，只有root用户才能够查看其它用户的配额。
‘
7、使用和命令操作：
(1)vi/vim：具有程序编辑能力的文本编辑器，具有代码补全、编译及错误跳转等便于编辑的功能；Unix系统都会内建vi文书编辑器；
①进入vi/命令模式：vi/vimfilename；由命令模式进入输入编辑模式：按键ioa;
②编辑模式完成进入底线模式，并保存退出：输入模式下，Esc键+":"，存修改文件退出：":wq"；
(2)shell：是Unix操作系统下传统的用户和计算机的交互界面，也是控制系统的脚本语言。
①bash是众多shell版本中的一种，不同的shell版本对应这不同的需求，没有好坏，在Linux中默认的shell就是Bourne-Againshell(简称bash)，另外一个是伯克利分校比尔▪乔伊写的CShell(csh)，因为类似C语言，故此得名。而由这两种又发展出很多其它的版本，不过根基都在这里。
②可以用shell脚本实现一些常用的功能，可以提高工作效率。
(3)常用命令：
①安装：apt-getinstall/update；清屏：clear；
②日期：data；日历：cal；关机：shoutdown；重启：rebote；
系统管理/监控：
dstat：用于监控内存、进行、网络及磁盘性能，可用于替代ifstat、iostat、dmstat等工具。使用之前需先执行如下命令进行安装：apt-get install dstat

uname-显示系统信息/内核版本；ipaddr-查看ip地址；

ps：查看进程统计信息；
ps -ef (system v 输出)
ps -aux bsd 格式输出
ps -ef | grep pid
linux上进程有5种状态:
1. 运行(正在运行或在运行队列中等待)
2. 中断(休眠中, 受阻, 在等待某个条件的形成或接受到信号)
3. 不可中断(收到信号不唤醒和不可运行, 进程必须等待直到有中断发生)
4. 僵死(进程已终止, 但进程描述符存在, 直到父进程调用wait4()系统调用后释放)
5. 停止(进程收到SIGSTOP, SIGSTP, SIGTIN, SIGTOU信号后停止运行运行)
ps工具标识进程的5种状态码:
D 不可中断 uninterruptible sleep (usually IO)
R 运行 runnable (on run queue)
S 中断 sleeping
T 停止 traced or stopped
Z 僵死 a defunct (”zombie”) process
df-显示磁盘空间使用情况；lsblk-查看系统的磁盘；fsck-检查并修复Linux文件系统；
3)tftp-上传及下载文件；ftpwho-显示ftp会话信息；curl-文件传输工具；2)vmstat-显示虚拟内存状态；ulimit-显示系统资源限制的信息；

Free：显示系统内存的使用情况，包括物理内存、交换内存(swap)和内核缓冲区内存；
free -h(加上 -h 选项，输出的结果会友好很多)
free -h -s 3(使用 -s 选项并指定间隔的秒数)
free 是真正尚未被使用的物理内存数量，Linux 内核为了提升磁盘操作的性能，会消耗一部分内存去缓存磁盘数据，就是我们介绍的 buffer 和 cache。所以对于内核来说，buffer 和 cache 都属于已经被使用的内存。当应用程序需要内存时，如果没有足够的 free 内存可以用，内核就会从 buffer 和 cache 中回收内存来满足应用程序的请求。所以从应用程序的角度来说，available  = free + buffer + cache。
扇区是设备的最小寻址单元，也叫 "硬扇区" 或 "设备块"。块是操作系统中文件系统的最小寻址单元，也叫 "文件块" 或 "I/O 块"。每个块包含一个或多个扇区，但大小不能超过一个页面，所以一个页可以容纳一个或多个内存中的块

top：
是常用的性能分析工具，经常用来监控linux的系统状况，能够实时显示系统中各个进程的资源占用情况。
KiB Swap: 3905532 total	交换区总量
KiB Mem: 1530752 total	物理内存总量
PR	优先级

ipteables：维护IP规则表，封停或解封IP，其实就是在IP规则表中对入站部分的规则进行添加操作
封停一个IP：iptables -I INPUT -s ***.***.***.*** -j DROP
解封一个IP：iptables -D INPUT -s ***.***.***.*** -j DROP
禁止某个IP地址服务：iptables –A Filter -p tcp -s 192.168.0.1 –dport 80 -j DROP
只允许某些服务，其他都拒绝：iptables -A Filter -p tcp -s 192.168.0.1 –dport 1000 -j ACCEPT
禁止某个IP地址的某个端口服务：iptables -A Filter -p tcp -s 10.10.10.253 –dport 80 -j DROP

文件管理/编辑：
1)pwd-显示文件路径；ls-显示指定工作目录下的内容及属性信息；
2)mkdir-创建目录；rmdir-删除空目录
3)cp-复制文件或目录；rm-移除文件或目录；mv-移动或改名文件
4)cat-在终端设备上显示文件内容；tail-查看文件尾部内容
5)echo-输出字符串或提取Shell变量的值

⑤网络通信：
1)ssh-安全连接客户端
2)ping-测试主机间网络连通性
3)netstat-显示网络状态，用于监控进出网络的包和网络接口统计的命令行工具；
4)ifconfig-显示或设置网络设备
5)ss-显示活动套接字信息
6)servicenetworkrestart-重启网络
8、常用工具：
(1)w：查看到当前登录系统的用户是谁，以及执行了哪些命令。
(2)nmon：监控系统性能的小工具，nmon可以查看网络、CPU、内存和磁盘的使用情况。
①使用之前需要先用如下命令进行安装：sudoapt-getinstallnmon
②安装好后执行nmon命令即可打开：里面有对应查看信息属性的对应命令操作；如，打开之后按c查看CPU信息，按n查看网络信息；
交换空间(swap space)：是磁盘上的一块区域，可以是一个分区，也可以是一个文件。所以具体的实现可以是 swap 分区也可以是 swap 文件。当系统物理内存吃紧时，Linux 会将内存中不常访问的数据保存到 swap 上，这样系统就有更多的物理内存为各个进程服务，而当系统需要访问 swap 上存储的内容时，再将 swap 上的数据加载到内存中，这就是常说的换出和换入。交换空间可以在一定程度上缓解内存不足的情况，但是它需要读写磁盘数据，所以性能不是很高。
SSH：SecureShell（安全外壳），是建立在应用层基础上的安全协议；弥补网络中的漏洞，防止远程管理过程中的信息泄露问题；数据是经过压缩的，加快传输的速度；SSH提供两种级别的安全验证：①基于口令的安全验证（需要在网络上传送口令），传输的数据都会被加密，但是不能保证你正在连接的服务器就是你想连接的服务器；②基于密匙的安全验证（整个登录的过程可能需要10秒）：自己创建一对密匙，并把公用密匙放在需要访问的服务器上，请求，公钥验证，私钥质询。
SSL：是一种国际标准的加密及身份认证通信协议，基本特征：加密（数据封装）、完整性保护（掉包拒收）、相互鉴定（身份校验）；HTTPS协议是由HTTP加上TLS/SSL协议构建的可进行加密传输、身份认证的网络协议，主要通过数字证书、加密算法、非对称密钥等技术完成互联网数据传输加密，实现互联网传输安全保护；、
Linux发行版，是指把linux内核、Glibc库、硬件驱动模块以及各种应用软件打包集成在一起，以光盘或者镜像文件的形式交付给用户安装使用的产品；
硬链接： ln link source，Linux文件系统给磁盘分区中的所有文件都会分配一个称为索引节点号（Inode Idnex）的编号，硬连接的作用是允许一个文件拥有多个有效路径名，以防止“误删”的功能，只有当最后一个连接被删除后，文件的数据块及目录的连接才会被释放。
软链接： ln -s slink source，也称为符号连接（Symbolic Link），软链接文件类似于Windows的快捷方式。它实际上是一个包含另一文件的位置信息的特殊的文本文件。
孤儿进程：父进程退出，子进程还在运行的程序，最终会被init进程(进程号为1)所收养，完成状态收集工作。
僵尸进程：子进程退出，而父进程并没有调用wait或waitpid获取子进程的状态信息，子进程的进程描述符仍然保存在系统中。