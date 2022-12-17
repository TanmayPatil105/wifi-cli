# Wifi CLI simplified

``` Try wifi --help after installation```

## Installation

### Install using curl

```console
$ curl -s https://raw.githubusercontent.com/TanmayPatil105/wifi-cli/main/curl.sh | bash
```
```console
$ sudo chmod +x /bin/wifi
```

### Manual Installation
```console
$ git clone https://github.com/TanmayPatil105/wifi-cli.git
```
```console
$ cd wifi-cli
```
```console
$ sudo chmod +x install.sh configure
```
```console
$ ./configure
```
```console
$ ./install.sh
```

### Uninstallation

```console
$ ./install.sh remove
```
<hr/>

### Dependencies

Install following packages before using wifi-cli

- **xterm**

```console
$ sudo apt install xterm
```
```console
$ sudo pacman -S xterm
```
- **nmcli**

```console
$ sudo apt install network-manager
```
```console
$ sudo pacman -S networkmanager
```

### Build on Docker
```console
$ sudo docker build -t wifi-cli .
```
<hr/>

### Usage 

```wifi on```
```wifi off```
```wifi status```
```wifi list```
```wifi connect '$SSID'```
```wifi pass```
```wifi saved```

```wifi hotspot```
```wifi hotspot off```
```wifi forget '$SSID'```
```wifi recon```
```wifi speed```
<hr/>

### Support
Please [open an issue](https://github.com/TanmayPatil105/wifi-cli/issues/new) if you'd like to report a bug or request a feature.

Do ⭐ the repo if you find it useful
<hr/>

### Contributing
Follow [guidelines](https://github.com/TanmayPatil105/wifi-cli/blob/main/CONTRIBUTING.md) before contributing.

<hr/>

### Uses
`Uses speedtest-cli for checking network speed`

### Additional
Try changing the `/src/wifi` file using following steps if hotspot option doesn't work

```
Instead of the command "nmcli con up hotspot" replace it with the following lines
```
~~~console
UUID=$(grep uuid /etc/NetworkManager/system-connections/Hotspot | cut -d= -f2)
nmcli con up uuid $UUID
~~~
