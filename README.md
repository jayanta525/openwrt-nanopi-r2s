![enter image description here](https://dev.azure.com/jayantagogoi525/jayantagogoi525/_apis/build/status/rk3328-nanopi-r2s?branchName=rk3328-uboot-spl)
# OpenWrt for NanoPi R2S

Initial OpenWrt support for FriendlyElec NanoPi R2S SBC with 2x1000Mbps ports.
![enter image description here](http://wiki.friendlyarm.com/wiki/images/6/66/NanoPi_R2S-1.jpg )![enter image description here](http://wiki.friendlyarm.com/wiki/images/2/20/NanoPi_R2S-layout.jpg )
# Downloads
Go to release section, or [click here](https://github.com/jayanta525/openwrt-nanopi-r2s/releases/tag/v1.0-openwrt).

For test build, [click here](https://jayantajit.me/downloads/openwrt/stable/).


### First Release: v1.0-openwrt
Working:
 - OpenWrt boots
 - PHY ethernet port
 - USB ethernet port
 - LEDs
### For subsequent releases check release page.
## Note
This port is not yet ready for upstream-openwrt. A lot of work is to be done to kernel device tree source as well as u-boot and a whole lot of cleanup before sending it to openwrt PR. I will continue to contribute code here until it is ready for PR at openwrt master.
## Issues
Please post issues in issue section, or [click here](https://github.com/jayanta525/openwrt-nanopi-r2s/issues).
## Screenshots
### /proc/cpuinfo
```
root@OpenWrt:/# cat /proc/cpuinfo
processor       : 0
BogoMIPS        : 48.00
Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x41
CPU architecture: 8
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 4

processor       : 1
BogoMIPS        : 48.00
Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x41
CPU architecture: 8
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 4

processor       : 2
BogoMIPS        : 48.00
Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x41
CPU architecture: 8
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 4

processor       : 3
BogoMIPS        : 48.00
Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x41
CPU architecture: 8
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 4

```

### openssl speed -evp aes-128-cbc -elapsed
```
OpenSSL 1.1.1g  21 Apr 2020
built on: Wed May 20 21:35:46 2020 U,64) rc4(char) des(int) aes(partial) idea(int) blowfish(ptr) 
compiler: aarch64-openwrt-linux-musl-gcc -fPIC -pthread -Wa,--noexecstack -Wall -O3 -Wno-error=unused-but-set-variable -Wno-error=unused-result -O3 -ffunction-sections -fdata-sections -znow -zrelro -DOPENSSL_USE_NODELETE -DOPENSSL_PIC -DOPENSSL_CPUID_OBJ -DOPENSSL_BN_ASM_MONT -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DKECCAK1600_ASM -DVPAES_ASM -DECP_NISTZ256_ASM -DPOLY1305_ASM -DZLIB -DZLIB_SHARED -DNDEBUG -DOPENSSL_PREFER_CHACHA_OVER_GCM
The 'numbers' are in 1000s of bytes per second processed.
type             16 bytes     64 bytes    256 bytes   1024 bytes   8192 bytes  16384 bytes
aes-128-cbc     125389.79k   380230.29k   742168.83k  1011209.90k  1130659.84k  1138862.76k
```
### openssl speed aes-128-cbc
```
OpenSSL 1.1.1g  21 Apr 2020
built on: Wed May 20 21:35:46 2020 UTC
options:bn(64,64) rc4(char) des(int) aes(partial) idea(int) blowfish(ptr) 
compiler: aarch64-openwrt-linux-musl-gcc -fPIC -pthread -Wa,--noexecstack -Wall -O3 -Wno-error=unused-but-set-variable -Wno-error=unused-result -O3 -ffunction-sections -fdata-sections -znow -zrelro -DOPENSSL_USE_NODELETE -DOPENSSL_PIC -DOPENSSL_CPUID_OBJ -DOPENSSL_BN_ASM_MONT -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DKECCAK1600_ASM -DVPAES_ASM -DECP_NISTZ256_ASM -DPOLY1305_ASM -DZLIB -DZLIB_SHARED -DNDEBUG -DOPENSSL_PREFER_CHACHA_OVER_GCM
The 'numbers' are in 1000s of bytes per second processed.
type             16 bytes     64 bytes    256 bytes   1024 bytes   8192 bytes  16384 bytes
aes-128 cbc      55115.86k    60549.91k    62123.52k    62787.30k    62698.84k    62701.57k
```
### Luci

![enter image description here](https://github.com/jayanta525/openwrt-nanopi-r2s/raw/rk3328-uboot-spl/.assets/luci-overview.png)

![enter image description here](https://github.com/jayanta525/openwrt-nanopi-r2s/raw/rk3328-uboot-spl/.assets/luci-dmesg.png)
![enter image description here](https://github.com/jayanta525/openwrt-nanopi-r2s/raw/rk3328-uboot-spl/.assets/luci-syslog.png)
![enter image description here](https://github.com/jayanta525/openwrt-nanopi-r2s/raw/rk3328-uboot-spl/.assets/luci-network.png)
