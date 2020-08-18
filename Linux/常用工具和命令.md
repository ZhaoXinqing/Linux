# Linux
	- 登录：Zhao0216
	- 清屏：clear

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