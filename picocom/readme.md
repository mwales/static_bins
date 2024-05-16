# Build Instructions

```
git clone https://github.com/npat-efault/picocom.git
cd picocom

# Add static flag to the first C++ compiler option statement
sed -i -E 's/(^CPPFLAGS.*VER.*)$/\1 -static/' Makefile
sed -i -E 's/(^LDFLAGS .*)$/\1 -static/' Makefile
sed -i -E 's/(^CFLAGS .*)$/\1 -static/' Makefile
make -j8
strip picocom
```

# Notes


