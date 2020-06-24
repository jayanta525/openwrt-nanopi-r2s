
# OpenWrt for NanoPi R2S

Initial OpenWrt support for FriendlyElec NanoPi R2S SBC with 2x1000Mbps ports.
![enter image description here](https://i.imgur.com/m35OXRD.png)

# CI/CD Builds

### Usage

 1. [Fork this on repository](https://github.com/jayanta525/openwrt-nanopi-r2s/fork)
 2. Install CircleCi free plan from Github Marketplace
 3. Enable this repository in CircleCi Porjects
 4. The initial build will be on the default branch with dummy configuration.
 5. Switch to branch "circleci"
 6. Edit feeds.conf to your requirment
 7. Edit config.seed file to your requirements
 8. Edit custom scripts if required.
 9. Commit the changes.
 10. Cache is enabled, i.e. toolchains and packages will be cached for faster subsequent compilations (~20mins).
 11. To clear the cache, change $CACHE value in .circleci/config.yml

	
### Help on OpenWrt Forums
Link: https://forum.openwrt.org/t/nanopi-r2s-is-a-great-openwrt-device/65374/79?u=jayanta525
# Downloads
Go to release section, or [click here](https://github.com/jayanta525/openwrt-nanopi-r2s/releases).

## Note
This port is not yet ready for upstream-openwrt. A lot of work is to be done to kernel device tree source as well as u-boot and a whole lot of cleanup before sending it to openwrt PR. I will continue to contribute code here until it is ready for PR at openwrt master.

PRs are welcomed.

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

#### Overview
![enter image description here](https://i.imgur.com/HLyrJ83.png)

#### Network
![enter image description here](https://i.imgur.com/gmLlWKF.png)

#### htop
![enter image description here](https://i.imgur.com/QfOQLvk.png)

#### Netdata
![enter image description here](https://i.imgur.com/9Jj0m1R.png)

### Temps

With heatsink and no active cooling (ambient temps: ~30* C).

![enter image description here](https://i.imgur.com/x5f0HCQ.png)

Send me your test setup screenshot to add here.
