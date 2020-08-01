
CGroups：控制组群（control groups）的简写
    - 是Linux内核的一个功能：
        - 最初的目标是为资源管理提供的一个统一的框架，用来限制、控制与分离一个进程组的资源（如**CPU、内存、磁盘输入输出**等），既整合现有的cpuset等子系统，也为未来开发新的子系统提供接口。
        - 现在的cgroups适用于多种应用场景，从单个进程的资源控制，到实现操作系统层次的虚拟化（OS Level Virtualization）。
    - 详细功能：
        - 限制进程组可以使用的资源数量（Resource limiting ）：
            - 比如，memory子系统可以为进程组设定一个memory使用上限，一旦进程组使用的内存达到限额再申请内存，就会触发OOM（out of memory）。
        - 进程组的优先级控制（Prioritization ）：
            - 比如：可以使用cpu子系统为某个进程组分配特定cpu share。
        - 记录进程组使用的资源数量（Accounting ）：
            - 比如：可以使用cpuacct子系统记录某个进程组使用的cpu时间
        - 进程组隔离（Isolation）：
            - 比如：使用ns子系统可以使不同的进程组使用不同的namespace，以达到隔离的目的，不同的进程组有各自的进程、网络、文件系统挂载空间。
        - 进程组控制（Control）：
            - 比如：使用freezer子系统可以将进程组挂起和恢复。
Namespace：
    - 是什么？
        - 是linux内核提供的用来隔离内核资源的特性，是对全局系统资源的一种封装隔离，使得处于不同Namespace的进程拥有独立的全局系统资源，在同一个namespace下的进程可以感知彼此的变化，而对外界的进程一无所知；改变一个 namespace 中的系统资源只会影响当前namespace里的进程，对其他 namespace 中的进程没有影响
        - namespace技术为docker等容器技术的出现和发展提供了基础条件，并随着docker的发展和火爆，把长期在后台默默奉献的 namespace技术推到了大家的面前。

    - 如何使用：
        - 查看进程所属的 namespace：
            - 从版本号为 3.8 的内核开始，/proc/[pid]/ns 目录下会包含进程所属的 namespace 信息，查看当前进程所属的 namespace 信息的命令：
        - 通过 clone() 在创建新进程的同时创建 namespace
        - 通过 setns() 函数可以将当前进程加入到已有的 namespace 中
        - 通过 unshare 函数可以在原进程上进行 namespace 隔离；


