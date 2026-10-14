#!/system/bin/sh
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm $MODPATH/new-api 0 0 0755
set_perm $MODPATH/lib/ld-linux-aarch64.so.1 0 0 0755
set_perm $MODPATH/lib/libc.so.6 0 0 0755
set_perm $MODPATH/service.sh 0 0 0755
