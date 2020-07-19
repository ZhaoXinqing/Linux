[【一篇入魂】网络编程中的五种IO模型](https://blog.csdn.net/jiaodaguan/article/details/104000052)<br>
一：IO简介
Unix（like）中，一切皆文件。Socket、FIFO、管道、终端都是文件，一切都是流。在信息交换的过程中，实际都是对这些流进行的数据收发操作，简称I/O操作（系统调用read、write）。而流有很多，于是就用文件描述符（fd）来区分具体是哪个流。For example，我们创建了一个socket，系统调用会返回一个fd，对socket的任何操作都是对这个fd的操作（隐隐包含着一种分层与抽象的思想）。