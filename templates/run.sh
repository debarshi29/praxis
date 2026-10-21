#!/usr/bin/env bash
# usage: templates/run.sh path/to/file.{py,rs}   (stdin from in.txt if present)
# Rust is built with debug assertions + overflow checks, the local analogue of sanitizers.
set -e
src="$1"; ext="${src##*.}"
if [ -f in.txt ]; then in=in.txt; else in=/dev/stdin; fi
case "$ext" in
  py) python "$src" < "$in" ;;
  rs) bin="${TMPDIR:-/tmp}/$(basename "${src%.rs}")"
      rustc -C debug-assertions=on -C overflow-checks=on -W warnings -o "$bin" "$src"
      "$bin" < "$in" ;;
  *) echo "unsupported: $ext (Python/Rust only)" >&2; exit 1 ;;
esac
