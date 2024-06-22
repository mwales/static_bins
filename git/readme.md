# Build Dependencies

```
sudo apt-get install build-essential zlib1g-dev gettext
```

Docker build failed on some tclsh step, and internet post suggested gettext
would fix (it did)

# Build Instructions



```
git clone https://github.com/git/git
cd git
autoconf
./configure CFLAGS="${CFLAGS} -static"
make -j8

strip git
```

# Notes


