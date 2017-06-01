# PC Environment Setup Guides

本文以Markdown格式编写，[Markdown格式请参见此处](http://markdown-guide.readthedocs.io/en/latest/basics.html)或者[官网](https://daringfireball.net/projects/markdown/basics)

## 说明

这个文件用于说明我个人PC环境下的一些软硬件安装、配置情况。便于在新的环境或设备上能方便快速地还原我最习惯的工作环境。

## 软件

#### 输入法

* 全局设置
使用[搜狗五笔](http://wubi.sogou.com)输入法。在Windows上开启中文和英语两种语言，使用「Windows键」+ 「空格」（系统默认）在两种语言中切换。中文中只有搜狗输入法，默认中文输入，且关闭用「Shift」键切换中英文。这样只有用「Windows键」+ 「空格」才能在中英文间进行切换。
* 搜狗五笔设置
具体有输入法导出的配置文件，新装完后导入配置即可。默认配置文件名为「SogouWubi_yymmdd.CWB」。
要点有：
  * 使用纯五笔
  * 回车时字母上屏，空码时不取消输入，便于临时输入英文
  * 取消警示音
  * 标点符号还原英文的中括号
  * 自定义短语有「yy」和「hh」分别用于输入直角引号；「yx」用于输入我的邮箱地址。

---
#### 字体
使用了「[Inziu IosevkaCC SC](https://be5invis.github.io/Iosevka/inziu.html)」字体，对于编程和中英文混合文本都支持得很好。

#### Vim编辑器
使用目前[最新版](http://www.vim.org/download.php)，具体使用「[GVim8.0 64位免安装版](https://github.com/vim/vim-win32-installer)」
配置文件和色彩文件在OneDrive和GitHub上都有。

#### 搜索
* 文件搜索
安装使用[Everything](http://www.voidtools.com/downloads/), 快捷键设置「Alt + Q」来打开搜索界面。
常用语法：
    * 「file:」 搜索文件
    * 「audio:」搜索音频文件
    * 「video:」搜索视频文件
    * 「ext:exe,pdf」搜索扩展名为exe或pdf的文件
    * 「path:src」路径中包含src
    * 「!path:classes」路径中不包含classes
    * 以上以空格分隔表示「与」（AND），差不多够用了。

* 搜索引擎
如果平均每天使用搜索引擎超过10次，想办法使用Google。搜索结果差距太大，长期会有很大的影响。

---
#### 浏览器
使用Chrome浏览器，主要在于插件丰富，可以方便地增加功能
* Markup文件支持
安装插件「[Markdown Viewer](https://github.com/simov/markdown-viewer)」，注意设置允许其访问文件类型的资源。

#### 笔记软件
* OneNote2016
手机，电脑全设备同步，无限制。
* 印象笔记
用于收藏网页文章，微信文章
只有手机和电脑同步（免费版限制2台设备）

#### 播放器
使用[PotPlayer](https://potplayer.daum.net/)64位版本

#### Windows系统优化设置
* 右键打开命令行菜单 更改注册表，具体参见[这里](https://www.windowscentral.com/how-add-open-command-prompt-window-here-back-context-menu-windows-10),空白处参见[这里](https://superuser.com/questions/1077073/command-prompt-here-without-shift-key-in-windows-10)，或者英文搜索「open command here windows 10」。
