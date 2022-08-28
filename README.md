# config
---

My ~/.config in Arch_Linux

## usb
This time I install arch on my usb.
I refered to:

[ArchLinux USB](https://mags.zone/arch-usb.html)

[installation guide 简体中文](https://wiki.archlinux.org/title/Installation_guide_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))

[Archlinux 在Vmware中的安装](https://blog.csdn.net/qq_41605439/article/details/113256605)

When I boot the system on the USB stick, the problem occurs:

`EFI UUID'fa1236_josdf234_sdf245' not found`

I try to add content to Hooks in file `/etc/mkinitcpio.conf`.
I refer to [[mkinitcpio] unable to boot intel nvme after install due to missing vmd module](https://bugs.archlinux.org/task/68704)
and 
[为什么 Arch 安装到U盘不能启动](https://forum.ubuntu.org.cn/viewtopic.php?p=2814501)

## xorg
### startx
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

I have set a 1920x1080 resolution, according to this video:
[4.[arch 配置系列]更换壁纸、更改分辨率](https://www.bilibili.com/video/BV1ci4y1A7rq?spm_id_from=333.1007.top_right_bar_window_history.cotent.click)

### xrandr
`xrandr` find it's "10".
So `xrandr -s 10` will change resolution to "1920x1080".
And I have added this content to the config of i3.

### xmodmap
My method for remapping key in archlinux is in the script `xmod.bash`, but there is a bug.
If I add the command `exec... bash /path/to/xmod.bash` into config of i3, I will have to restart i3 once
to let it really work.

Maybe there is something running in wrong order.

So I try to set it with using both x and i3. 
Notice that command `xmodmap` depends on x client,
and `xcape` can get from [alols's github](https://github.com/alols/xcape)

Referring to `xmod.bash`:
- Firstly, add `clear ...` into `~/.Xmodmap`.
`.xinitrc` will run it when start x.

- Finally, add `exec... /path/to/xcape -e "Mode_switch=Tab"` into config of i3.

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

See
[Allen191819](https://github.com/Allen191819/dotfiles)

## alacritty

My terminal.

`<Alt> + <Enter>` to open terminal.

`<Alr> + <Shift> + q` to close.

Some fonts are necessary:
- Ficra
- OperatorMono
- JetBrainsMono

Just download those as needed.
But it's better to download [Nerd Font](https://github.com/ryanoasis/nerd-fonts) 
from GitHub, because lunarvim also need these fonts.


## fish
My shell.
But not recommended.
### oh-my-fish
Use `omf install theme/package`

Select theme "toaster".

Some necessary packages should be installed according to `~/.config/fish/functions`

Use `pacman -S package`.

### chmod
Generally I replace the newly default file with my back file.
So I may face the problem with no permissions. If this occurs, I should `chmod -R 777 *`

### functions
- replace
  - ls <- exa
  - cat <- bat

## zsh
A useful shell.
I'd like to use zsh from arcolinux which has a random theme.

Just copy `~/.zshrc` and `/usr/share/oh-my-zsh`.

## lvim
***lunarvim***

Preparation:
- nodejs
- yarn
- npm
- rust: export environment path
- lua

After installation need to install nerd-fonts in GitHub.

### dashboard
I modified the `~/.local/share/lunarvim/lvim/lua/lvim/core/alpha/dashboard.lua` with file `dashboard.lua` submitted.
## pacman
```
pacman -Qei > pacmanList.lst
cat pacmanList.lst | grep "Name" > pacmanListName.lst
```
The list of packages installed by pacman is in the file `pacman.lst` and `pacmanName.lst`.
## autojump
`j somewhere`

Very useful. See
[Fissh Shell 使用笔记](https://segmentfault.com/a/1190000017843344?utm_source=tag-newest)

Care of the path. My path is `/usr/share/autojump/autojump.fish`.
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

## picom
picom is a standalone compositor for Xorg, suitable for use with window managers that
do not provide compositing.

see 

[i3 & picom config settings](https://zhuanlan.zhihu.com/p/148067171)

## ranger
`ranger`

[ranger](https://ranger.github.io/)
is a console file manager with VI key bindings.

After set fish, I can use `r` to start.

## rofi
hotkey: `<alt-d>`
## eva
math, type `<alt-m>`
## cmatrix
code rain
