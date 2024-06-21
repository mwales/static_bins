# Build Dependencies

```
sudo apt-get install build-essential zlib1g-dev
```


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


