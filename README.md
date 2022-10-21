# Wifi CLI simplified

``` Try wifi --help after installation```

### Installation

```
$ git clone https://github.com/TanmayPatil105/wifi-cli.git
```
```
$ cd wifi-cli
```
```
$ sudo chmod +x install.sh configure
```
```
$ ./configure
```
```
$ ./install.sh
```
### Uninstallation

```
$ ./install.sh remove
```
<hr/>

### Dependencies

Install following packages before using wifi-cli

- **xterm**

```
sudo apt install xterm
```
```
sudo pacman -S xterm
```
- **nmcli**

```
sudo apt install network-manager
```
```
sudo pacman -S networkmanager
```
<hr/>


### Usage 

```wifi on```
```wifi off```
```wifi list```
```wifi connect '$SSID'```
```wifi pass```
```wifi saved```
```wifi hotspot```
```wifi hotspot off```
```wifi forget '$SSID'```
<hr/>

### Support
Please [open an issue](https://github.com/TanmayPatil105/wifi-cli/issues/new) if you'd like to report a bug or request a feature.

Do ⭐ the repo if you find it useful
<hr/>

### Contributing
Follow [guidelines](https://github.com/TanmayPatil105/wifi-cli/blob/main/CONTRIBUTING.md) before contributing.

<hr/>

### Additional
Try changing the "./src/wifi" file using following steps if hotspot option doesn't work

```
Instead of the command "nmcli con up hotspot" replace it with the following lines
```
```
UUID=$(grep uuid /etc/NetworkManager/system-connections/Hotspot | cut -d= -f2)
nmcli con up uuid $UUID
```
