vimrc
=====

安装
----

- windows: run `win_install.bat` with administrative rights
- linux: 
```shell
$ git clone git@github.com:JackonYang/vimrc.git .vim
$ cd .vim
$ install.sh
```

剪切板
------

支持 <C-x> <C-c> <C-v> 三个通用快捷键与系统剪切板交互。

建议不要在插入模式(Insert)下执行<C-v>粘贴，由于自动缩进，可能导致格式混乱。
在普通模式(Normal)下执行<C-v>不会引发格式问题。

python
------

1. `<F7>` Flake8 check

    let g:flake8_max_complexity=10
