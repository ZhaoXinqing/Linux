**<p align=right> ———业精于勤，荒于嬉；行成于思，毁于随！ </p>**

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

	- 【Linux 命令大全：】
		- https://www.runoob.com/linux/linux-command-manual.html
	- 【常见命令问题】
		- https://www.cnblogs.com/passzhang/p/8552757.html


## Linux软链接和硬链接

	- 硬链接： ln link source
		Linux文件系统给磁盘分区中的所有文件都会分配一个称为索引节点号（Inode Idnex）的编号，在Linux中，多个文件名指向同一索引节点是存在的。一般这种连接就是硬连接。硬连接的作用是允许一个文件拥有多个有效路径名，以防止“误删”的功能。因为只要对应该目录的索引节点有一个以上的连接，只有当最后一个连接被删除后，文件的数据块及目录的连接才会被释放。
	- 软链接： ln -s slink source
		也称为符号连接（Symbolic Link），软链接文件类似于Windows的快捷方式。它实际上是一个包含另一文件的位置信息的特殊的文本文件。



## 为什么需要线程锁？ ##
	- 线程资源的使用是抢占式的，谁抢到谁使用，这将导致线程访问共享数据时可能出现问题，锁机制就是将可能出现问题的代码用锁对象锁起来，被锁起来的代码就叫同步代码块，同一时间只能有一个线程来访问这个同步代码块。
	- 这类似于数据库中事务这个概念；

## 弹性扩缩容（Auto Scaling），原理是什么? ##
	- 根据业务需求和伸缩策略，自动调整计算资源。
	- 通过设置定时或周期性的监控策略，实时增加或减少实例，并完成配置，保证业务平稳健康运行。

## 孤儿进程，僵尸进程 ##
	- 孤儿进程：
		父进程退出，子进程还在运行的程序称为孤儿进程。孤儿进程会被init进程(进程号为1)所收养，并由init进程对它们完成状态收集工作。
	- 僵尸进程：
		子进程退出，而父进程并没有调用wait或waitpid获取子进程的状态信息，那么子进程的进程描述符仍然保存在系统中，这种进程称之为僵死进程。

## 关于linux系统的的一些基础问答题
	- https://blog.csdn.net/shantf93/article/details/79775702



## DPI技术
一种基于应用层的流量检测和控制技术，称为“深度包检测”
https://blog.csdn.net/carolzhang8406/article/details/103717640
4G/5G网络中的服务质量（Quality of Service,Qos)应该就属于深度包检测中的“分离网络流量”功能，深度包检测还具有，管理网络性能的用处。
通过设置不懂的权重，来分离各种数据包，从而更高效的应用有限的网络宽带资源。


【网络掩码的作用：】
    - 将某个IP地址划分成网络地址和主机地址两部分

Linux发行版，是指一些企业采用某种办法把**linux内核、Glibc库、硬件驱动模块**以及**各种应用软件**打包集成在一起，以光盘或者镜像文件的形式交付给用户安装使用