## Html和css的关系 ##
单纯的html仅仅是静态文本，浏览器的渲染是基于html文档中各级标签内所定义的属性（<label style = 'fashion'>）以及外部css样式表来完成的。css样式表里面规定了html文档内部的所有元素对象（字体、线条、区块、表单、控件、菜单以及背景等）的表现形式（外观、粗细、颜色、背景色、间距等）。css通常以外部独立文件的形式嵌入在html头部标签（<head>）的script标签中。
浏览器在调用html文档时按照所加载的css样式表对整个页面完成渲染。

html与xml的语法一脉相承，但是html因为承担的角色比较特殊，所以它的结构体系有固定的模板，有大量常用的预定义标签，内部还需要嵌入css样式表，引用js动态脚本，看起来整个结构非常庞大。而xml则相当精简，适合用于单纯的数据存储与传输。