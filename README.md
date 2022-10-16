# Wifi CLI simplified

```Last Modified on 15-10-2022```

``` Try wifi --help after installation```

### Installation

```
$ https://github.com/TanmayPatil105/wifi-cli.git
```
```
$ cd wifi-cli
```
```
$ sudo chmod +x install.sh
```
```
$ ./install.sh
```
### Uninstallation

```
$ ./install.sh remove
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
Please [open an issue](https://github.com/TanmayPatil105/Automation-using-shell-scripts/issues/new) if you'd like to report a bug or request a feature.

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
<hr/>
Do ⭐ the repo if you find it useful
