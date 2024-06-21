# Minesweeper

Statically compiled tiny version of Minesweeper posted on Hacker News

# Pre-requisite packages

* clang
* git

# Build Instructions

* Clone and build Odin (the programming language)
* Clone minesweeper
* Build minesweeper with odin

```
git clone https://github.com/odin-lang/Odin
cd Odin
./build_odin.sh
cd ..
git clone https://github.com/gaultier/minesweeper-from-scratch
cd minesweeper-from-scratch
../Odin/odin build src -o:speed
```

# Notes

Saw this get posted on hackernews and wanted to check it out:

* https://gaultier.github.io/blog/write_a_video_game_from_scratch_like_1987.html

Went to install the odin package from Ubuntu, and I assume there is a name
collision with an existing project, so it didn't work.  So created a
container to build odin and minesweeper in

