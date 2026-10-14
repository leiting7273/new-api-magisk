#!/system/bin/sh
# new-api autostart for KernelSU / Magisk (requires root)
MODDIR=${0%/*}
DATA=/data/adb/newapi

(
  until [ "$(getprop sys.boot_completed)" = "1" ]; do sleep 2; done
  sleep 10
  mkdir -p "$DATA/logs"
  cd "$DATA" || exit 1
  "$MODDIR/lib/ld-linux-aarch64.so.1" --library-path "$MODDIR/lib" \
    "$MODDIR/new-api" --port 3000 --log-dir "$DATA/logs" </dev/null >>"$DATA/run.log" 2>&1 &
) &
