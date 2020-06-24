# irqbalance
sed -i 's/0/1/g' feeds/packages/utils/irqbalance/files/irqbalance.config
#luci architecture
sed -i "s,boardinfo.system,'ARMv8',g" feeds/luci/modules/luci-mod-status/htdocs/luci-static/resources/view/status/include/10_system.js
# Maximum connection
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#irq_optimize
mkdir package/base-files/files/usr/bin
wget https://raw.githubusercontent.com/jayanta525/openwrt-nanopi-r2s/circleci/files/irq_optimize.sh -O package/base-files/files/usr/bin/irq_optimize.sh
chmod +x package/base-files/files/usr/bin/irq_optimize.sh
wget https://raw.githubusercontent.com/jayanta525/openwrt-nanopi-r2s/circleci/files/irq_optimize -O package/base-files/files/etc/init.d/irq_optimize
chmod +x package/base-files/files/etc/init.d/irq_optimize