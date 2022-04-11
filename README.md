# config
---

My ~/.config in Arch_Linux

## xorg
See

[archlinux 安装配置、i3-wm 配置](https://blog.csdn.net/olnautunm/article/details/109954444)

```
sudo pacman -S xorg xorg-xinit          
sudo pacman -S xf86-video-amdgpu        # 如果是其它显卡自行安装其它驱动
sudo pacman -S xf86-input-synaptics xf86-input-libinput     #输入、触控板驱动  
sudo pacman -S i3 dmune                                     #全部安装
sudo pacman -S gvfs-mtp                                     #挂载手机、U盘==
# 安装字体  字体不对会乱码，自行尝试。
sudo pacman -S ttf-droid wqy-microhei wqy-zenhei noto-fonts-emoji ttf-font-awesome 
sudo pacman -S alacritty    # 安装终端 ，可选择其它终端，各人喜好。
cp /etc/X11/xinit/xinitrc ~/.xinitrc                        #复制桌面启动文件
```
## alacritty

My terminal.

`<Alt> + <Enter>` to open terminal.

`<Alr> + <Shift> + q` to close.
## fcitx5
Better to google or baidu.
See

[Archlinux/Manjaro 安装 fcitx5](https://blog.csdn.net/qq_39100009/article/details/120316668)
```
fcitx5-configtool
```
Input Method.

`<Ctrl> + <Space>` 

Switch input method between English and Chinese.

Default is English.

> us
> pinyin

## neofetch
`neofetch`

Print information of system.

## fish
My shell.

But not recommended.
## lvim
***lunarvim***

Preparation:
- nodejs
- yarn
- npm
- rust export environment path
- lua

After installation need instal nerd-fonts

## i3
### information
[i3wm](https://i3wm.org)

i3 is a titling window manager.

`<Alt> + <Enter>` to open terminal.

`<Alt> + 2` to move window to window2.

`<Alt> + <Shift> + 2` to turn to window2.

`<Alr> + <Shift> + q` to close window.
### config
`~/.config/i3/config`

see
[Allen191819](https://github.com/Allen191819/dotfiles)

## picom
picom is a standalone compositor for Xorg, suitable for use with window managers that
do not provide compositing.

see 

[i3 & picom config settings](https://zhuanlan.zhihu.com/p/148067171)
## ranger
`ranger`

[ranger](https://ranger.github.io/)
is a console file manager with VI key bindings.

## rofi
## eva
math
