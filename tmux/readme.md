# Build Instructions

```
git clone https://github.com/tmux/tmux.git
cd tmux
./autogen.sh
./configure --enable-static
make -j8
```

# Notes

As the build completes, it complains that getpwnam, getpwuid,
test_for_getaddrino_hacks, getaddrinfo, getprotobynumber, getservbyname still
require glibc shared library, but the resulting executable is not a
dynamically linked elf.

