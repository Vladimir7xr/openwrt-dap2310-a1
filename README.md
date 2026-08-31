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
root@DAP-2310:~# logread
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.000000] Linux version 6.12.103 (vovan@DAP-2310) (mips-openwrt-linux-musl-gcc (OpenWrt GCC 14.3.0 r33191-b6a820ea85) 14.3.0, GNU ld (GNU Binutils) 2.44) #0 Wed Aug 26 09:10:33 2026
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] printk: legacy bootconsole [early0] enabled
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] CPU0 revision is: 00019374 (MIPS 24Kc)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] MIPS: machine is D-Link DAP-2310 rev. A1
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] SoC: Atheros AR7242 rev 1
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Initrd not found or empty - disabling initrd
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] OF: reserved mem: Reserved memory: No reserved-memory node in the DT
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32 bytes.
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Zone ranges:
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000]   Normal   [mem 0x0000000000000000-0x0000000003ffffff]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Movable zone start for each node
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Early memory node ranges
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000]   node   0: [mem 0x0000000000000000-0x0000000003ffffff]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000003ffffff]
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    0.000000] pcpu-alloc: [0] 0
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.000000] Kernel command line: console=ttyS0,115200 rootfstype=squashfs,jffs2
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Writing ErrCtl register=00040000
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Readback ErrCtl register=00040000
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 16384
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] RCU Tasks Trace: Setting shift to 0 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=1.
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] NR_IRQS: 51
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] CPU clock: 400.000 MHz
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 9556302233 ns
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.000002] sched_clock: 32 bits at 200MHz, resolution 5ns, wraps every 10737418237ns
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.008112] Calibrating delay loop... 265.42 BogoMIPS (lpj=1327104)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.094344] pid_max: default: 32768 minimum: 301
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.118785] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.126207] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.151700] Memory: 53920K/65536K available (6828K kernel code, 602K rwdata, 1536K rodata, 1200K init, 227K bss, 11104K reserved, 0K cma-reserved)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.170395] futex hash table entries: 256 (order: 0, 3072 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.191052] pinctrl core: initialized pinctrl subsystem
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.202726] NET: Registered PF_NETLINK/PF_ROUTE protocol family
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.232901] clocksource: Switched to clocksource MIPS
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.259410] NET: Registered PF_INET protocol family
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.264842] IP idents hash table entries: 2048 (order: 2, 16384 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.273657] tcp_listen_portaddr_hash hash table entries: 1024 (order: 0, 4096 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.282230] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.292083] TCP established hash table entries: 1024 (order: 0, 4096 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.299873] TCP bind hash table entries: 1024 (order: 1, 8192 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.307040] TCP: Hash tables configured (established 1024 bind 1024)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.314336] MPTCP token hash table entries: 512 (order: 1, 6144 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.322081] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.328790] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, linear)
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.337182] NET: Registered PF_UNIX/PF_LOCAL protocol family
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.343093] PCI: CLS 0 bytes, default 32
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.353552] workingset: timestamp_bits=14 max_order=14 bucket_order=0
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.363023] squashfs: version 4.0 (2009/01/31) Phillip Lougher
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.368926] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.388052] pinctrl-single 18040028.pinmux: 64 pins, size 8
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.401103] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.409284] printk: legacy console [ttyS0] disabled
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.415327] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq = 10, base_baud = 12500000) is a 16550A
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.424339] printk: legacy console [ttyS0] enabled
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.434019] printk: legacy bootconsole [early0] disabled
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.461262] 4 fixed-partitions partitions found on MTD device spi0.0
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.468247] Creating 4 MTD partitions on "spi0.0":
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.473158] 0x000000000000-0x000000020000 : "u-boot"
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.482093] 0x000000020000-0x000000fe0000 : "firmware"
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.489962] 2 uimage-fw partitions found on MTD device firmware
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.496053] Creating 2 MTD partitions on "firmware":
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.501062] 0x000000000000-0x0000002b0000 : "kernel"
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.508214] 0x0000002b0000-0x000000fc0000 : "rootfs"
Mon Aug 31 22:53:17 2026 kern.info kernel: [    0.515417] mtd: setting mtd3 (rootfs) as root device
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.520682] 1 squashfs-split partitions found on MTD device rootfs
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.526996] 0x0000007c0000-0x000000fc0000 : "rootfs_data"
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.534589] 0x000000fe0000-0x000000ff0000 : "env"
Mon Aug 31 22:53:17 2026 kern.notice kernel: [    0.541635] 0x000000ff0000-0x000001000000 : "art"
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.273168] ag71xx-legacy 19000000.eth: connected to PHY at mdio.0:00 [uid=004dd072, driver=Qualcomm Atheros AR8035]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.285007] eth0: Atheros AG71xx at 0xb9000000, irq 4, mode: rgmii-id
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.605512] ag71xx-legacy 1a000000.eth: connected to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.616515] eth1: Atheros AG71xx at 0xba000000, irq 5, mode: gmii
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.623282] i2c_dev: i2c /dev entries driver
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.631413] NET: Registered PF_INET6 protocol family
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.646469] Segment Routing with IPv6
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.650344] In-situ OAM (IOAM) with IPv6
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.654655] NET: Registered PF_PACKET protocol family
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.659817] 8021q: 802.1Q VLAN Support v1.8
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.696013] PCI host bridge to bus 0000:00
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.700181] pci_bus 0000:00: root bus resource [mem 0x10000000-0x13ffffff]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.707217] pci_bus 0000:00: root bus resource [io  0x0000]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.712840] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.720926] pci 0000:00:00.0: [168c:002a] type 00 class 0x028000 PCIe Legacy Endpoint
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.728893] pci 0000:00:00.0: BAR 0 [mem 0x10000000-0x1000ffff 64bit]
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.735594] pci 0000:00:00.0: supports D1
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.739645] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.747391] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 00
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.754220] pci 0000:00:00.0: BAR 0 [mem 0x10000000-0x1000ffff 64bit]: assigned
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.774086] clk: Disabling unused clocks
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.793985] VFS: Mounted root (squashfs filesystem) readonly on device 31:3.
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.810678] Freeing unused kernel image (initmem) memory: 1200K
Mon Aug 31 22:53:17 2026 kern.warn kernel: [    1.816716] This architecture does not have kernel memory protection.
Mon Aug 31 22:53:17 2026 kern.info kernel: [    1.823226] Run /sbin/init as init process
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    1.827356]   with arguments:
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    1.827367]     /sbin/init
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    1.827380]   with environment:
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    1.827391]     HOME=/
Mon Aug 31 22:53:17 2026 kern.debug kernel: [    1.827403]     TERM=linux
Mon Aug 31 22:53:17 2026 user.info kernel: [    3.757622] init: Console is alive
Mon Aug 31 22:53:17 2026 user.info kernel: [    3.761626] init: - watchdog -
Mon Aug 31 22:53:17 2026 user.info kernel: [    6.416458] kmodloader: loading kernel modules from /etc/modules-boot.d/*
Mon Aug 31 22:53:17 2026 kern.warn kernel: [    6.583312] gpio_button_hotplug: loading out-of-tree module taints kernel.
Mon Aug 31 22:53:17 2026 user.info kernel: [    6.601005] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
Mon Aug 31 22:53:17 2026 user.info kernel: [    6.619182] init: - preinit -
Mon Aug 31 22:53:17 2026 kern.notice kernel: [   11.812950] random: crng init done
Mon Aug 31 22:53:17 2026 kern.info kernel: [   18.584280] eth0: link up (1000Mbps/Full duplex)
Mon Aug 31 22:53:17 2026 kern.notice kernel: [   19.102324] jffs2: notice: (486) jffs2_build_xattr_subsystem: complete building xattr subsystem, 12 of xdatum (0 unchecked, 1 orphan) and 13 of xref (1 dead, 0 orphan) found.
Mon Aug 31 22:53:17 2026 user.info kernel: [   19.121347] mount_root: switching to jffs2 overlay
Mon Aug 31 22:53:17 2026 kern.warn kernel: [   19.147203] overlayfs: upper fs does not support tmpfile.
Mon Aug 31 22:53:17 2026 user.warn kernel: [   19.165672] urandom-seed: Seeding with /etc/urandom.seed
Mon Aug 31 22:53:17 2026 kern.info kernel: [   19.651596] eth0: link down
Mon Aug 31 22:53:17 2026 user.info kernel: [   19.678399] procd: - early -
Mon Aug 31 22:53:17 2026 user.info kernel: [   19.681761] procd: - watchdog -
Mon Aug 31 22:53:17 2026 user.info kernel: [   20.487425] procd: - watchdog -
Mon Aug 31 22:53:17 2026 user.info kernel: [   20.494703] procd: - ubus -
Mon Aug 31 22:53:17 2026 user.info kernel: [   20.925189] procd: - init -
Mon Aug 31 22:53:17 2026 user.info kernel: [   24.988893] kmodloader: loading kernel modules from /etc/modules.d/*
Mon Aug 31 22:53:17 2026 kern.info kernel: [   27.777271] GACT probability on
Mon Aug 31 22:53:17 2026 kern.info kernel: [   27.805125] Mirror/redirect action on
Mon Aug 31 22:53:17 2026 kern.info kernel: [   27.867971] u32 classifier
Mon Aug 31 22:53:17 2026 kern.info kernel: [   27.870739]     input device check on
Mon Aug 31 22:53:17 2026 kern.info kernel: [   27.874496]     Actions configured
Mon Aug 31 22:53:17 2026 kern.info kernel: [   28.005309] Loading modules backported from Linux version v6.18.39-0-gf89c29685
Mon Aug 31 22:53:17 2026 kern.info kernel: [   28.012701] Backport generated by backports.git 614e5ed
Mon Aug 31 22:53:17 2026 user.info kernel: [   29.283802] urngd: v1.0.2 started.
Mon Aug 31 22:53:17 2026 kern.info kernel: [   29.322113] PPP generic driver version 2.4.2
Mon Aug 31 22:53:17 2026 kern.info kernel: [   29.354906] NET: Registered PF_PPPOX protocol family
Mon Aug 31 22:53:17 2026 kern.info kernel: [   29.564742] ath: phy0: Ignoring endianness difference in EEPROM magic bytes.
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.573433] ath: EEPROM regdomain: 0x0
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.573454] ath: EEPROM indicates default country code should be used
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.573468] ath: doing EEPROM country->regdmn map search
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.573493] ath: country maps to regdmn code: 0x3a
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.573509] ath: Country alpha2 being used: US
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.573524] ath: Regpair used: 0x3a
Mon Aug 31 22:53:17 2026 kern.debug kernel: [   29.590675] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
Mon Aug 31 22:53:17 2026 kern.info kernel: [   29.592325] ieee80211 phy0: Atheros AR9280 Rev:2 mem=0xf43e9885, irq=11
Mon Aug 31 22:53:17 2026 user.info kernel: [   29.743583] kmodloader: done loading kernel modules from /etc/modules.d/*
Mon Aug 31 22:53:22 2026 authpriv.info dropbear[1054]: Not backgrounding
Mon Aug 31 22:53:26 2026 daemon.notice wpa_supplicant[1108]: Successfully initialized wpa_supplicant
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: vrf
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: bonding
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: 8021ad
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: 8021q
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: macvlan
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: veth
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: bridge
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: Network device
Mon Aug 31 22:53:27 2026 user.notice : Added device handler type: tunnel
Mon Aug 31 22:53:32 2026 user.notice ucitrack: Setting up /etc/config/luci-splash reload dependency on /etc/config/firewall
Mon Aug 31 22:53:32 2026 user.notice ucitrack: Setting up /etc/config/qos reload dependency on /etc/config/firewall
Mon Aug 31 22:53:32 2026 user.notice ucitrack: Setting up /etc/config/miniupnpd reload dependency on /etc/config/firewall
Mon Aug 31 22:53:33 2026 user.notice ucitrack: Setting up /etc/config/odhcpd reload dependency on /etc/config/dhcp
Mon Aug 31 22:53:34 2026 user.notice ucitrack: Setting up /etc/config/dhcp reload dependency on /etc/config/network
Mon Aug 31 22:53:35 2026 daemon.notice hostapd: Set MLD config: [ ]
Mon Aug 31 22:53:35 2026 daemon.notice hostapd: Reload all interfaces
Mon Aug 31 22:53:35 2026 daemon.notice wpa_supplicant[1108]: Set MLD config: [ ]
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.076877] br-lan: port 1(eth0) entered blocking state
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.082193] br-lan: port 1(eth0) entered disabled state
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.087625] ag71xx-legacy 19000000.eth eth0: entered allmulticast mode
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.094666] ag71xx-legacy 19000000.eth eth0: entered promiscuous mode
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.142453] eth1: link up (1000Mbps/Full duplex)
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.151517] br-lan: port 2(eth1) entered blocking state
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.156913] br-lan: port 2(eth1) entered disabled state
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.162242] ag71xx-legacy 1a000000.eth eth1: entered allmulticast mode
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.169315] ag71xx-legacy 1a000000.eth eth1: entered promiscuous mode
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.221327] br-lan: port 2(eth1) entered blocking state
Mon Aug 31 22:53:35 2026 kern.info kernel: [   54.226709] br-lan: port 2(eth1) entered forwarding state
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'lan' is enabled
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'loopback' is enabled
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'loopback' is setting up now
Mon Aug 31 22:53:35 2026 user.notice ucitrack: Setting up /etc/config/network reload dependency on /etc/config/wireless
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'loopback' is now up
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Network device 'eth1' link is up
Mon Aug 31 22:53:35 2026 daemon.notice netifd: bridge 'br-lan' link is up
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'lan' has link connectivity
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'lan' is setting up now
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Network device 'lo' link is up
Mon Aug 31 22:53:35 2026 daemon.notice netifd: Interface 'loopback' has link connectivity
Mon Aug 31 22:53:37 2026 user.notice ucitrack: Setting up non-init /etc/config/fstab reload handler: /sbin/block mount
Mon Aug 31 22:53:37 2026 daemon.notice netifd: lan (1545): udhcpc: started, v1.37.0
Mon Aug 31 22:53:38 2026 daemon.notice netifd: radio0 (1469): wifi-scripts: Starting
Mon Aug 31 22:53:38 2026 user.notice ucitrack: Setting up /etc/config/system reload trigger for non-procd /etc/init.d/led
Mon Aug 31 22:53:38 2026 daemon.notice hostapd: Set new config for phy phy0:
Mon Aug 31 22:53:38 2026 daemon.notice wpa_supplicant[1108]: Set new config for phy phy0
Mon Aug 31 22:53:38 2026 daemon.notice netifd: lan (1545): udhcpc: broadcasting discover
Mon Aug 31 22:53:39 2026 user.notice ucitrack: Setting up /etc/config/luci_statistics reload dependency on /etc/config/system
Mon Aug 31 22:53:39 2026 kern.info kernel: [   58.184321] eth0: link up (1000Mbps/Full duplex)
Mon Aug 31 22:53:39 2026 kern.info kernel: [   58.189103] br-lan: port 1(eth0) entered blocking state
Mon Aug 31 22:53:39 2026 kern.info kernel: [   58.194454] br-lan: port 1(eth0) entered forwarding state
Mon Aug 31 22:53:39 2026 daemon.notice netifd: Network device 'eth0' link is up
Mon Aug 31 22:53:39 2026 user.notice ucitrack: Setting up /etc/config/dhcp reload dependency on /etc/config/system
Mon Aug 31 22:53:39 2026 daemon.notice wpa_supplicant[1108]: Set new config for phy phy0
Mon Aug 31 22:53:41 2026 daemon.notice hostapd: Set new config for phy phy0: /var/run/hostapd-phy0.conf
Mon Aug 31 22:53:41 2026 daemon.notice hostapd: Restart interface for phy phy0
Mon Aug 31 22:53:41 2026 daemon.notice hostapd: Configuration file: <inline> (phy phy0) --> new PHY
Mon Aug 31 22:53:41 2026 daemon.notice hostapd: Configuration file: Reading configuration file '<inline>'
Mon Aug 31 22:53:41 2026 daemon.notice hostapd: Configuration file: Reading configuration file '<inline>'
Mon Aug 31 22:53:41 2026 daemon.notice netifd: radio0 (1469): wifi-scripts: Configuring 'phy0' txantenna: 4294967295, rxantenna: 4294967295 distance: 0
Mon Aug 31 22:53:41 2026 daemon.notice netifd: radio0 (1469): wifi-scripts: Preparing interface: phy0-ap0 with MAC: 00:03:7f:d7:17:51
Mon Aug 31 22:53:41 2026 daemon.notice wpa_supplicant[1108]: Start pending MLD interfaces
Mon Aug 31 22:53:41 2026 daemon.notice netifd: lan (1545): udhcpc: broadcasting discover
Mon Aug 31 22:53:41 2026 daemon.notice netifd: lan (1545): udhcpc: broadcasting select for 192.168.177.2, server 192.168.177.1
Mon Aug 31 22:53:41 2026 daemon.notice netifd: lan (1545): udhcpc: lease of 192.168.177.2 obtained from 192.168.177.1, lease time 7200
Mon Aug 31 22:53:42 2026 kern.info kernel: [   60.583394] br-lan: port 3(phy0-ap0) entered blocking state
Mon Aug 31 22:53:42 2026 kern.info kernel: [   60.589240] br-lan: port 3(phy0-ap0) entered disabled state
Mon Aug 31 22:53:42 2026 kern.info kernel: [   60.595011] ath9k 0000:00:00.0 phy0-ap0: entered allmulticast mode
Mon Aug 31 22:53:42 2026 kern.info kernel: [   60.601706] ath9k 0000:00:00.0 phy0-ap0: entered promiscuous mode
Mon Aug 31 22:53:42 2026 daemon.notice hostapd: phy0-ap0: interface state UNINITIALIZED->COUNTRY_UPDATE
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.717848] ath: EEPROM regdomain: 0x8283
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.721937] ath: EEPROM indicates we should expect a country code
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.728422] ath: doing EEPROM country->regdmn map search
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.734024] ath: country maps to regdmn code: 0x3d
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.738987] ath: Country alpha2 being used: RU
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.743547] ath: Regpair used: 0x3d
Mon Aug 31 22:53:42 2026 kern.debug kernel: [   60.747194] ath: regdomain 0x8283 dynamically updated by user
Mon Aug 31 22:53:43 2026 daemon.notice netifd: Interface 'lan' is now up
Mon Aug 31 22:53:43 2026 daemon.notice netifd: lan (1545): udhcpc: sending renew to server 192.168.177.1
Mon Aug 31 22:53:43 2026 daemon.notice netifd: lan (1545): udhcpc: lease of 192.168.177.2 obtained from 192.168.177.1, lease time 7199
Mon Aug 31 22:53:43 2026 kern.info kernel: [   62.272622] br-lan: port 3(phy0-ap0) entered blocking state
Mon Aug 31 22:53:43 2026 kern.info kernel: [   62.278392] br-lan: port 3(phy0-ap0) entered forwarding state
Mon Aug 31 22:53:43 2026 daemon.notice netifd: Network device 'phy0-ap0' link is up
Mon Aug 31 22:53:47 2026 daemon.notice hostapd: phy0-ap0: interface state COUNTRY_UPDATE->ENABLED
Mon Aug 31 22:53:47 2026 daemon.notice hostapd: phy0-ap0: AP-ENABLED

```

</details>

## ⚠️ Disclaimer

**Use this at your own risk!** Modifying device firmware can brick your hardware. 
I am not responsible for any damage, data loss, or broken devices caused by using these configuration files.
