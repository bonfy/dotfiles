# Vim 安装指南



```cmd
$ brew install vim --with-lua --with-override-system-vi
```

`lua` 是为了 neocomplete


## 操作

切换视窗 <C w> 方向键

NERDTree
* B = 叫出bookmark
* C = 把目前游標停留的這個目錄設定為根目錄
* p = 把游標移動到上一層目錄
* P = 把游標移動到根目錄
* J = 把游標移往這個結點的第一個
* K = 把游標移往這個結點的最後一個
* u = 把樹狀結構的根目錄往上移一層
* I = 切換是否顯示隱藏檔案
* m = 叫出NERDTree的系統選單

### 大段的注释

注释：ctrl+v 进入列编辑模式,向下或向上移动光标,把需要注释的行的开头标记起来,然后按大写的I,再插入注释符,比如"#",再按Esc,就会全部注释了。


删除：先按v,进入visual模式,横向选中列的个数(如"#"注释符号,需要选中两列),再按Esc,再按ctrl+v 进入列编辑模式,向下或向上移动光标,选中注释部分,然后按d, 就会删除注释符号（#）。



PS：当然不一定是shell的注释符"#"，也可以是"//"，或者其他任意的字符；vim才不知道什么是注释符呢，都是字符而已。

使用替换命令：
* :% s/^/\/\//g     在全部内容的行首添加//号注释
* :2,50 s/^/\/\//g  在2~50行首添加//号注释
* :2,50 s/^\/\///g  在2~50行首删除//号
 
## 参考资料

- [Learn Vim the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
- [中文版](http://learnvimscriptthehardway.onefloweroneworld.com/)
- spf13
- k-vim