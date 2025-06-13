---
author: Xonotic Team
comments: false
date: 2023-06-20 04:42:29+00:00
slug: download
title: Download Xonotic 0.8.6
type: page
---

For details of what's new in this version please check the [release notes][806post].  
Use of the online services indicates you understand and agree to the [Terms of Service and Privacy Policy](/tos).  
Got questions? Please see the [FAQ](/faq) and other [Documentation](https://gitlab.com/xonotic/xonotic/blob/master/README.md#documentation), or [chat](/chat) with us.  

##### Mirror links
&emsp; [<i class="fas fa-download"></i> xonotic.org][806zip] (DE)  
&emsp; [<i class="fas fa-download"></i> evil-ant-colony.org](https://download.evil-ant-colony.org/xonotic/xonotic-0.8.6.zip) (DE)  
&emsp; [<i class="fas fa-download"></i> illwieckz.net](https://dl.illwieckz.net/share/xonotic/release/xonotic-0.8.6.zip) (FR)  
&emsp; [<i class="fas fa-download"></i> unvanquished.net](https://dl.unvanquished.net/share/xonotic/release/xonotic-0.8.6.zip) (US)  
&emsp; [<i class="fas fa-download"></i> antzucaro.com](https://xonotic.antzucaro.com/xonotic-0.8.6.zip) (US)  
&emsp; [<i class="fas fa-download"></i> xonotic.au](https://xonotic.au/downloads/xonotic-0.8.6.zip) (AU)  
<!--
&emsp; [<i class="fas fa-download"></i> rm.cloudns.org](https://rm.cloudns.org/~xonotic/xonotic-0.8.5.zip) (DE)  
&emsp; [<i class="fas fa-download"></i> github.com](https://github.com/garymoon/xonotic/releases/download/xonotic-v0.8.5/xonotic-0.8.5.zip) (Global)  
-->

##### BitTorrent
&emsp; [<i class="fas fa-cloud-download-alt fa-fw"></i> Torrent file](https://dl.xonotic.org/xonotic-0.8.6.zip.torrent) (courtesy of [fosstorrents.com](https://fosstorrents.com/games/xonotic/#downloads))  
&emsp; [<i class="fas fa-magnet fa-fw"></i> Magnet link](magnet:?xt=urn:btih:92225c5f4b48f777edfe1dcaeda6b81edaab0a6a&dn=xonotic-0.8.6.zip&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Ffosstorrents.com%3A6969%2Fannounce&tr=http%3A%2F%2Ffosstorrents.com%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&ws=https%3A%2F%2Fxonotic.antzucaro.com%2Fxonotic-0.8.6.zip&ws=https%3A%2F%2Fdl.xonotic.org%2Fxonotic-0.8.6.zip&ws=https%3A%2F%2Fdownload.evil-ant-colony.org%2Fxonotic%2Fxonotic-0.8.6.zip&ws=https%3A%2F%2Focv.xonotic.au%2Fdownloads%2Fxonotic-0.8.6.zip&ws=http%3A%2F%2Ffosstorrents.com%2Fdirect-links%2Fn%2FDownloads%2F%2Fxonotic-0.8.6.zip)  

1182MiB &emsp; [sha512sum][806sum]  

The zip file linked above requires no installation, just unzip and run.  
The flatpak provides convenient installation on most Linux distributions but uses more storage space.

<a href='https://flathub.org/apps/org.xonotic.Xonotic'>
	<img width='240' height='80' alt='Get it on Flathub' src='https://flathub.org/api/badge?svg&locale=en'/>
</a>

---

### System requirements

##### Hardware accelerated OpenGL 2.1 {#}
##### At least 4GB of RAM {#}
##### A supported platform: {#}
&emsp; <i class="fa-brands fa-windows"></i> Windows 7 or newer (x86 or x86-64)  
&emsp; <i class="fa-brands fa-linux"></i> Linux (x86-64) with `glibc/libc6 2.29 or newer`, `libSDL2`, `libvorbisfile`, `libcurl`, `libpng`  
&emsp; <i class="fa-brands fa-apple"></i> macOS (x86-64)  

Xonotic can run on other platforms if you [compile](https://gitlab.com/xonotic/xonotic/-/wikis/Compiling) the source code in the zip.

---

### Upgrading from an older version {#upgrading}

There's no need to download the zip again to get into the action. Use the following steps to upgrade:

  1. Navigate to the `misc/tools/rsync-updater` folder in your `Xonotic` "installation" folder
  2. Execute `update-to-release.sh` (for Linux or Mac) or `update-to-release.bat` (for Windows) and wait for it to complete.

The flatpak is upgraded through GNOME Software, KDE Plasma Discover, or the `flatpak update` command.

---

### Extra downloads

##### [NetRadiant <i class="fas fa-external-link-alt"></i>](https://netradiant.gitlab.io/page/download) {#netradiant}
The official Xonotic level editor, compiled for Windows, Linux and macOS by illwieckz.  
You can also [compile it from source](https://gitlab.com/xonotic/netradiant#getting-the-sources). The following mapping support package isn't required by NetRadiant.  

##### Mapping Support package {#mappingsupport}
The assets required to create Xonotic maps in other level editors. &emsp; 102MiB&emsp; [sha512sum][806sum]  
&emsp; [<i class="fas fa-download"></i> xonotic.org](https://dl.xonotic.org/xonotic-0.8.6-mappingsupport.zip) (DE)
&emsp; [<i class="fas fa-download"></i> evil-ant-colony.org](https://download.evil-ant-colony.org/xonotic/xonotic-0.8.6-mappingsupport.zip) (DE)
&emsp; [<i class="fas fa-download"></i> illwieckz.net](https://dl.illwieckz.net/share/xonotic/release/xonotic-0.8.6-mappingsupport.zip) (FR)  
&emsp; [<i class="fas fa-download"></i> unvanquished.net](https://dl.unvanquished.net/share/xonotic/release/xonotic-0.8.6-mappingsupport.zip) (US)
&emsp; [<i class="fas fa-download"></i> antzucaro.com](https://xonotic.antzucaro.com/xonotic-0.8.6-mappingsupport.zip) (US)
&emsp; [<i class="fas fa-download"></i> xonotic.au](https://xonotic.au/downloads/xonotic-0.8.6-mappingsupport.zip) (AU)  

<!--
##### Xonotic JPEG build {#jpeg}
A Xonotic release with JPEG textures, instead of DDS textures with S3 compression. This build has a larger file size and is compatible with old GPU drivers that lack S3TC support. It uses significantly more RAM and VRAM and has longer loading times. &emsp; 1509MiB&emsp; [sha512sum][806sum]  
&emsp; [<i class="fas fa-download"></i> xonotic.org](https://dl.xonotic.org/xonotic-0.8.6-high.zip) (DE)
&emsp; [<i class="fas fa-download"></i> evil-ant-colony.org](https://download.evil-ant-colony.org/xonotic/xonotic-0.8.6-high.zip) (DE)
&emsp; [<i class="fas fa-download"></i> illwieckz.net](https://dl.illwieckz.net/share/xonotic/release/xonotic-0.8.6-high.zip) (FR)
&emsp; [<i class="fas fa-download"></i> unvanquished.net](https://dl.unvanquished.net/share/xonotic/release/xonotic-0.8.6-high.zip) (US)
&emsp; [<i class="fas fa-download"></i> antzucaro.com](https://xonotic.antzucaro.com/xonotic-0.8.6-high.zip) (US)
&emsp; [<i class="fas fa-download"></i> xonotic.au](https://xonotic.au/downloads/xonotic-0.8.6-high.zip) (AU)  
-->

##### Xonotic source code {#source}
The source of all code parts (also included in the main zip). &emsp; 7MiB&emsp; [sha512sum][806sum]  
&emsp; [<i class="fas fa-download"></i> xonotic.org](https://dl.xonotic.org/xonotic-0.8.6-source.zip) (DE)
&emsp; [<i class="fas fa-download"></i> evil-ant-colony.org](https://download.evil-ant-colony.org/xonotic/xonotic-0.8.6-source.zip) (DE)
&emsp; [<i class="fas fa-download"></i> illwieckz.net](https://dl.illwieckz.net/share/xonotic/release/xonotic-0.8.6-source.zip) (FR)  
&emsp; [<i class="fas fa-download"></i> unvanquished.net](https://dl.unvanquished.net/share/xonotic/release/xonotic-0.8.6-source.zip) (US)
&emsp; [<i class="fas fa-download"></i> antzucaro.com](https://xonotic.antzucaro.com/xonotic-0.8.6-source.zip) (US)
&emsp; [<i class="fas fa-download"></i> xonotic.au](https://xonotic.au/downloads/xonotic-0.8.6-source.zip) (AU)  

---

### Attention: Developers, Artists and Mappers {#please-note}

Please refer to the [Xonotic Git README](https://gitlab.com/xonotic/xonotic/blob/master/README.md) for information about compiling the latest sources and contributing.<br/>
It's important to base your work on the latest git sources, rather than the files on this download page.<br/>
Joining the [development community discussions](https://gitlab.com/xonotic/xonotic/blob/master/README.md#community) is strongly encouraged.

---

### Older downloads

<!-- override some CSS so it looks decent -->
<style>
table {
	table-layout: auto;
	margin-left: unset;
	width: 55%;
}
table tr td {
	font-size: 1.2rem; /* same size as paragraph text */
}
</style>

<span style="color:red">SECURITY ALERT:</span> Versions older than 0.8.6 have a bug believed to be exploitable by malicious server admins.  
<span style="color:red">Do not use versions older than 0.8.6 to join online servers.</span> See also [0.8.6 Release Notes][806post].

|   |   |   |   |
| - | - | - | - |
| <i class="fas fa-download"></i> [**Xonotic 0.8.5**][805zip] | 1.2GB | [sha512sum][805sum] | [release notes][805post] |
| <i class="fas fa-download"></i> [**Xonotic 0.8.2**][802zip] | 946MB | [sha256sum][802sum] | [release notes][802post] |
| <i class="fas fa-download"></i> [**Xonotic 0.8.1**][801zip] | 940MB | [md5sum][801sum]    | [release notes][801post] |
| <i class="fas fa-download"></i> [**Xonotic 0.8.0**][800zip] | 953MB | [md5sum][800sum]    | [release notes][800post] |
| <i class="fas fa-download"></i> [**Xonotic 0.7.0**][700zip] | 993MB | [md5sum][700sum]    | [release notes][700post] |
| <i class="fas fa-download"></i> [**Xonotic 0.6.0**][600zip] | 965MB | [md5sum][600sum]    | [release notes][600post] |
| <i class="fas fa-download"></i> [**Xonotic 0.5.0**][500zip] | 943MB | [md5sum][500sum]    | [release notes][500post] |
| <i class="fas fa-download"></i> [**Xonotic 0.1.0**][100zip] | 1.3GB | [md5sum][100sum]    | [release notes][100post] |

[806zip]:https://dl.xonotic.org/xonotic-0.8.6.zip
[805zip]:https://dl.xonotic.org/xonotic-0.8.5.zip
[802zip]:https://dl.xonotic.org/xonotic-0.8.2.zip
[801zip]:https://dl.xonotic.org/xonotic-0.8.1.zip
[800zip]:https://dl.xonotic.org/xonotic-0.8.0.zip
[700zip]:https://dl.xonotic.org/xonotic-0.7.0.zip
[600zip]:https://dl.xonotic.org/xonotic-0.6.0.zip
[500zip]:https://dl.xonotic.org/xonotic-0.5.0.zip
[100zip]:https://dl.xonotic.org/xonotic-0.1.0preview.zip

[806sum]:https://dl.xonotic.org/xonotic-0.8.6.sha512
[805sum]:https://dl.xonotic.org/xonotic-0.8.5.sha512
[802sum]:https://dl.xonotic.org/xonotic-0.8.2.sha256
[801sum]:https://dl.xonotic.org/xonotic-0.8.1.md5
[800sum]:https://dl.xonotic.org/xonotic-0.8.0.md5
[700sum]:https://dl.xonotic.org/xonotic-0.7.0.md5
[600sum]:https://dl.xonotic.org/xonotic-0.6.0.md5
[500sum]:https://dl.xonotic.org/xonotic-0.5.0.md5
[100sum]:https://dl.xonotic.org/xonotic-0.1.0preview.md5

[806post]:/posts/2023/xonotic-0-8-6-release
[805post]:/posts/2022/xonotic-0-8-5-release
[802post]:/posts/2017/xonotic-0-8-2-release
[801post]:/posts/2015/xonotic-0-8-1-release
[800post]:/posts/2015/xonotic-0-8-release
[700post]:/posts/2013/xonotic-0-7-release
[600post]:/posts/2012/xonotic-0-6-is-now-available
[500post]:/posts/2011/xonotic-0-5-release
[100post]:/posts/2010/xonotic-0-1-preview-released
