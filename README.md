# OpenWrt Support for D-Link DAP-2310 Rev. A1

Custom configuration files to build OpenWrt 25.12 for the D-Link DAP-2310 A1 access point.

## 📌 Device Specifications
* **SoC:** Atheros AR7242
* **Flash:** 16 MB
* **RAM:** 64 MB

## 📂 File Descriptions
* `*.dts` — Device Tree Source file.
* `generic.mk` — Image build profile.

## 📋 Boot Log

<details>
<summary>Click to expand OpenWrt bootlog</summary>

```text
root@DAP-2310:~# dmesg
[    0.000000] Linux version 6.12.103 (vovan@DAP-2310) (mips-openwrt-linux-musl-gcc (OpenWrt GCC 14.3.0 r33191-b6a820ea85) 14.3.0, GNU ld (GNU Binutils) 2.44) #0 Wed Aug 26 09:10:33 2026
[    0.000000] printk: legacy bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019374 (MIPS 24Kc)
[    0.000000] MIPS: machine is D-Link DAP-2310 rev. A1
[    0.000000] SoC: Atheros AR7242 rev 1
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] OF: reserved mem: Reserved memory: No reserved-memory node in the DT
[    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Kernel command line: console=ttyS0,115200 rootfstype=squashfs,jffs2
[    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes, linear)
[    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes, linear)
[    0.000000] Writing ErrCtl register=00040000
[    0.000000] Readback ErrCtl register=00040000
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 16384
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] RCU Tasks Trace: Setting shift to 0 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=1.
[    0.000000] NR_IRQS: 51
[    0.000000] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.000000] CPU clock: 400.000 MHz
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 9556302233 ns
[    0.000002] sched_clock: 32 bits at 200MHz, resolution 5ns, wraps every 10737418237ns
[    0.008112] Calibrating delay loop... 265.42 BogoMIPS (lpj=1327104)
[    0.094344] pid_max: default: 32768 minimum: 301
[    0.118786] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.126207] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.151734] Memory: 53920K/65536K available (6828K kernel code, 602K rwdata, 1536K rodata, 1200K init, 227K bss, 11104K reserved, 0K cma-reserved)
[    0.170435] futex hash table entries: 256 (order: 0, 3072 bytes, linear)
[    0.191089] pinctrl core: initialized pinctrl subsystem
[    0.202755] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.232951] clocksource: Switched to clocksource MIPS
[    0.259456] NET: Registered PF_INET protocol family
[    0.264886] IP idents hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.273694] tcp_listen_portaddr_hash hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.282275] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.292127] TCP established hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.299916] TCP bind hash table entries: 1024 (order: 1, 8192 bytes, linear)
[    0.307083] TCP: Hash tables configured (established 1024 bind 1024)
[    0.314379] MPTCP token hash table entries: 512 (order: 1, 6144 bytes, linear)
[    0.322124] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
[    0.328833] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, linear)
[    0.337217] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.343128] PCI: CLS 0 bytes, default 32
[    0.353602] workingset: timestamp_bits=14 max_order=14 bucket_order=0
[    0.363079] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.368978] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.388082] pinctrl-single 18040028.pinmux: 64 pins, size 8
[    0.401161] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
[    0.409348] printk: legacy console [ttyS0] disabled
[    0.415399] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq = 10, base_baud = 12500000) is a 16550A
[    0.424407] printk: legacy console [ttyS0] enabled
[    0.434080] printk: legacy bootconsole [early0] disabled
[    0.461444] 4 fixed-partitions partitions found on MTD device spi0.0
[    0.468428] Creating 4 MTD partitions on "spi0.0":
[    0.473342] 0x000000000000-0x000000020000 : "u-boot"
[    0.482292] 0x000000020000-0x000000fe0000 : "firmware"
[    0.490146] 2 uimage-fw partitions found on MTD device firmware
[    0.496235] Creating 2 MTD partitions on "firmware":
[    0.501245] 0x000000000000-0x0000002abcee : "kernel"
[    0.506267] mtd: partition "kernel" doesn't end on an erase/write block -- force read-only
[    0.516754] 0x0000002abcee-0x000000fc0000 : "rootfs"
[    0.521795] mtd: partition "rootfs" doesn't start on an erase/write block boundary -- force read-only
[    0.533335] mtd: setting mtd3 (rootfs) as root device
[    0.538601] 1 squashfs-split partitions found on MTD device rootfs
[    0.544912] 0x0000007b0000-0x000000fc0000 : "rootfs_data"
[    0.552427] 0x000000fe0000-0x000000ff0000 : "env"
[    0.559557] 0x000000ff0000-0x000001000000 : "art"
[    1.293217] ag71xx-legacy 19000000.eth: connected to PHY at mdio.0:00 [uid=004dd072, driver=Qualcomm Atheros AR8035]
[    1.305063] eth0: Atheros AG71xx at 0xb9000000, irq 4, mode: rgmii-id
[    1.625567] ag71xx-legacy 1a000000.eth: connected to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
[    1.636575] eth1: Atheros AG71xx at 0xba000000, irq 5, mode: gmii
[    1.643336] i2c_dev: i2c /dev entries driver
[    1.651472] NET: Registered PF_INET6 protocol family
[    1.666513] Segment Routing with IPv6
[    1.670391] In-situ OAM (IOAM) with IPv6
[    1.674700] NET: Registered PF_PACKET protocol family
[    1.679866] 8021q: 802.1Q VLAN Support v1.8
[    1.716039] PCI host bridge to bus 0000:00
[    1.720211] pci_bus 0000:00: root bus resource [mem 0x10000000-0x13ffffff]
[    1.727236] pci_bus 0000:00: root bus resource [io  0x0000]
[    1.732852] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
[    1.740937] pci 0000:00:00.0: [168c:002a] type 00 class 0x028000 PCIe Legacy Endpoint
[    1.748906] pci 0000:00:00.0: BAR 0 [mem 0x10000000-0x1000ffff 64bit]
[    1.755638] pci 0000:00:00.0: supports D1
[    1.759693] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[    1.767453] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 00
[    1.774245] pci 0000:00:00.0: BAR 0 [mem 0x10000000-0x1000ffff 64bit]: assigned
[    1.794105] clk: Disabling unused clocks
[    1.814039] VFS: Mounted root (squashfs filesystem) readonly on device 31:3.
[    1.830737] Freeing unused kernel image (initmem) memory: 1200K
[    1.836759] This architecture does not have kernel memory protection.
[    1.843264] Run /sbin/init as init process
[    1.847394]   with arguments:
[    1.847406]     /sbin/init
[    1.847418]   with environment:
[    1.847429]     HOME=/
[    1.847441]     TERM=linux
[    3.778970] init: Console is alive
[    3.783143] init: - watchdog -
[    6.438879] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    6.605791] gpio_button_hotplug: loading out-of-tree module taints kernel.
[    6.623788] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    6.634412] init: - preinit -
[   11.823000] random: crng init done
[   18.584320] eth0: link up (1000Mbps/Full duplex)
[   19.156228] jffs2: notice: (486) jffs2_build_xattr_subsystem: complete building xattr subsystem, 44 of xdatum (11 unchecked, 29 orphan) and 49 of xref (12 dead, 18 orphan) found.
[   19.175761] mount_root: switching to jffs2 overlay
[   19.187658] overlayfs: upper fs does not support tmpfile.
[   19.210211] urandom-seed: Seeding with /etc/urandom.seed
[   19.703995] eth0: link down
[   19.731730] procd: - early -
[   19.735324] procd: - watchdog -
[   20.510406] procd: - watchdog -
[   20.516825] procd: - ubus -
[   20.945309] procd: - init -
[   25.227993] kmodloader: loading kernel modules from /etc/modules.d/*
[   27.987293] GACT probability on
[   28.015158] Mirror/redirect action on
[   28.068178] u32 classifier
[   28.070951]     input device check on
[   28.074707]     Actions configured
[   28.208761] Loading modules backported from Linux version v6.18.39-0-gf89c29685
[   28.216250] Backport generated by backports.git 614e5ed
[   29.531261] PPP generic driver version 2.4.2
[   29.539861] urngd: v1.0.2 started.
[   29.564934] NET: Registered PF_PPPOX protocol family
[   29.752819] ath: phy0: Ignoring endianness difference in EEPROM magic bytes.
[   29.761536] ath: EEPROM regdomain: 0x0
[   29.761554] ath: EEPROM indicates default country code should be used
[   29.761568] ath: doing EEPROM country->regdmn map search
[   29.761593] ath: country maps to regdmn code: 0x3a
[   29.761609] ath: Country alpha2 being used: US
[   29.761624] ath: Regpair used: 0x3a
[   29.778754] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   29.780406] ieee80211 phy0: Atheros AR9280 Rev:2 mem=0x599634ba, irq=11
[   29.936291] kmodloader: done loading kernel modules from /etc/modules.d/*
[   54.681856] br-lan: port 1(eth0) entered blocking state
[   54.687241] br-lan: port 1(eth0) entered disabled state
[   54.692567] ag71xx-legacy 19000000.eth eth0: entered allmulticast mode
[   54.699626] ag71xx-legacy 19000000.eth eth0: entered promiscuous mode
[   54.787699] eth1: link up (1000Mbps/Full duplex)
[   54.817729] br-lan: port 2(eth1) entered blocking state
[   54.823131] br-lan: port 2(eth1) entered disabled state
[   54.828460] ag71xx-legacy 1a000000.eth eth1: entered allmulticast mode
[   54.835530] ag71xx-legacy 1a000000.eth eth1: entered promiscuous mode
[   54.909860] br-lan: port 2(eth1) entered blocking state
[   54.915239] br-lan: port 2(eth1) entered forwarding state
[   58.824369] eth0: link up (1000Mbps/Full duplex)
[   58.829152] br-lan: port 1(eth0) entered blocking state
[   58.834509] br-lan: port 1(eth0) entered forwarding state
[   61.417789] br-lan: port 3(phy0-ap0) entered blocking state
[   61.423546] br-lan: port 3(phy0-ap0) entered disabled state
[   61.429293] ath9k 0000:00:00.0 phy0-ap0: entered allmulticast mode
[   61.436055] ath9k 0000:00:00.0 phy0-ap0: entered promiscuous mode
[   61.536701] ath: EEPROM regdomain: 0x8283
[   61.540788] ath: EEPROM indicates we should expect a country code
[   61.547249] ath: doing EEPROM country->regdmn map search
[   61.552733] ath: country maps to regdmn code: 0x3d
[   61.557634] ath: Country alpha2 being used: RU
[   61.562304] ath: Regpair used: 0x3d
[   61.565882] ath: regdomain 0x8283 dynamically updated by user
[   63.007990] br-lan: port 3(phy0-ap0) entered blocking state
[   63.013734] br-lan: port 3(phy0-ap0) entered forwarding state

#End of syslog:
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'lan' is enabled
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'loopback' is enabled
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'loopback' is setting up now
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'loopback' is now up
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Network device 'eth1' link is up
Mon Aug 31 00:02:42 2026 daemon.notice netifd: bridge 'br-lan' link is up
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'lan' has link connectivity
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'lan' is setting up now
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Network device 'lo' link is up
Mon Aug 31 00:02:42 2026 daemon.notice netifd: Interface 'loopback' has link connectivity
Mon Aug 31 00:02:43 2026 user.notice ucitrack: Setting up non-init /etc/config/fstab reload handler: /sbin/block mount
Mon Aug 31 00:02:43 2026 daemon.notice netifd: lan (1546): udhcpc: started, v1.37.0
Mon Aug 31 00:02:44 2026 user.notice ucitrack: Setting up /etc/config/system reload trigger for non-procd /etc/init.d/led
Mon Aug 31 00:02:44 2026 daemon.notice netifd: radio0 (1477): wifi-scripts: Starting
Mon Aug 31 00:02:45 2026 daemon.notice hostapd: Set new config for phy phy0:
Mon Aug 31 00:02:45 2026 daemon.notice wpa_supplicant[1108]: Set new config for phy phy0
Mon Aug 31 00:02:45 2026 daemon.notice netifd: lan (1546): udhcpc: broadcasting discover
Mon Aug 31 00:02:45 2026 user.notice ucitrack: Setting up /etc/config/luci_statistics reload dependency on /etc/config/system
Mon Aug 31 00:02:45 2026 user.notice ucitrack: Setting up /etc/config/dhcp reload dependency on /etc/config/system
Mon Aug 31 00:02:46 2026 kern.info kernel: [   58.824369] eth0: link up (1000Mbps/Full duplex)
Mon Aug 31 00:02:46 2026 kern.info kernel: [   58.829152] br-lan: port 1(eth0) entered blocking state
Mon Aug 31 00:02:46 2026 kern.info kernel: [   58.834509] br-lan: port 1(eth0) entered forwarding state
Mon Aug 31 00:02:46 2026 daemon.notice netifd: Network device 'eth0' link is up
Mon Aug 31 00:02:46 2026 daemon.notice wpa_supplicant[1108]: Set new config for phy phy0
Mon Aug 31 00:02:47 2026 daemon.notice hostapd: Set new config for phy phy0: /var/run/hostapd-phy0.conf
Mon Aug 31 00:02:47 2026 daemon.notice hostapd: Restart interface for phy phy0
Mon Aug 31 00:02:48 2026 daemon.notice netifd: lan (1546): udhcpc: broadcasting discover
Mon Aug 31 00:02:48 2026 daemon.notice netifd: lan (1546): udhcpc: broadcasting select for 192.168.177.2, server 192.168.177.1
Mon Aug 31 00:02:48 2026 daemon.notice netifd: lan (1546): udhcpc: lease of 192.168.177.2 obtained from 192.168.177.1, lease time 6629
Mon Aug 31 00:02:48 2026 daemon.notice hostapd: Configuration file: <inline> (phy phy0) --> new PHY
Mon Aug 31 00:02:48 2026 daemon.notice hostapd: Configuration file: Reading configuration file '<inline>'
Mon Aug 31 00:02:48 2026 daemon.notice hostapd: Configuration file: Reading configuration file '<inline>'
Mon Aug 31 00:02:48 2026 daemon.notice netifd: radio0 (1477): wifi-scripts: Configuring 'phy0' txantenna: 4294967295, rxantenna: 4294967295 distance: 0
Mon Aug 31 00:02:48 2026 daemon.notice netifd: radio0 (1477): wifi-scripts: Preparing interface: phy0-ap0 with MAC: 00:03:7f:f3:17:15
Mon Aug 31 00:02:48 2026 daemon.notice wpa_supplicant[1108]: Start pending MLD interfaces
Mon Aug 31 00:02:48 2026 kern.info kernel: [   61.417789] br-lan: port 3(phy0-ap0) entered blocking state
Mon Aug 31 00:02:48 2026 kern.info kernel: [   61.423546] br-lan: port 3(phy0-ap0) entered disabled state
Mon Aug 31 00:02:48 2026 kern.info kernel: [   61.429293] ath9k 0000:00:00.0 phy0-ap0: entered allmulticast mode
Mon Aug 31 00:02:48 2026 kern.info kernel: [   61.436055] ath9k 0000:00:00.0 phy0-ap0: entered promiscuous mode
Mon Aug 31 00:02:48 2026 daemon.notice hostapd: phy0-ap0: interface state UNINITIALIZED->COUNTRY_UPDATE
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.536701] ath: EEPROM regdomain: 0x8283
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.540788] ath: EEPROM indicates we should expect a country code
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.547249] ath: doing EEPROM country->regdmn map search
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.552733] ath: country maps to regdmn code: 0x3d
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.557634] ath: Country alpha2 being used: RU
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.562304] ath: Regpair used: 0x3d
Mon Aug 31 00:02:48 2026 kern.debug kernel: [   61.565882] ath: regdomain 0x8283 dynamically updated by user
Mon Aug 31 00:02:50 2026 daemon.notice netifd: Interface 'lan' is now up
Mon Aug 31 00:02:50 2026 daemon.notice netifd: lan (1546): udhcpc: sending renew to server 192.168.177.1
Mon Aug 31 00:02:50 2026 daemon.notice netifd: lan (1546): udhcpc: lease of 192.168.177.2 obtained from 192.168.177.1, lease time 6627
Mon Aug 31 00:02:50 2026 kern.info kernel: [   63.007990] br-lan: port 3(phy0-ap0) entered blocking state
Mon Aug 31 00:02:50 2026 kern.info kernel: [   63.013734] br-lan: port 3(phy0-ap0) entered forwarding state
Mon Aug 31 00:02:50 2026 daemon.notice netifd: Network device 'phy0-ap0' link is up
Mon Aug 31 00:02:54 2026 daemon.info procd: - init complete -
Mon Aug 31 00:02:54 2026 daemon.notice hostapd: phy0-ap0: interface state COUNTRY_UPDATE->ENABLED
Mon Aug 31 00:02:54 2026 daemon.notice hostapd: phy0-ap0: AP-ENABLED

```

</details>

## ⚠️ Disclaimer

**Use this at your own risk!** Modifying device firmware can brick your hardware. 
I am not responsible for any damage, data loss, or broken devices caused by using these configuration files.
