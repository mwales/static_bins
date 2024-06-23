# Build Instructions

I tried to build directly from source and had some issues, but I was able to
build a static version from ubuntu sources (which looks like they install a
bunch of patches to.

* Add deb-src to the debian Types line in /etc/apt/sources.list.d/ubuntu.sources 
* install dpkg-dev libelf-dev
* apt-get source ltrace
* cd /opt/ltrace-0.7.3
* CFLAGS=--static CPPFLAGS=--static LDFLAGS=--static LIBS="-lzstd -lz" ./configure
* make

I'm not sure if I'm using the LIBS flag correctly or not.  But doing a regular
static build created a bunch of linker errors with deflate and some other
compression libraries.  Common suggestion on the internet was to add those flags
at the end of the linker line when you link.  The LIBS variable becomes the last
bit of test on the linker line, so alas, I put the special flags there to make
it work

# Notes

