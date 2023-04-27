# Billion iteration loops

This repository contains code that loops a billion times, written in a handful of languages.

I use this to get a ballpark idea about which languages are fast and which are slow. There's
barely anything scientific going on here.

The [Billion_Loop_Test.mdown](Billion_Loop_Test.mdown) file is the original collection.

I unearthed it from my drive and created separate files and a shell script (`benchmark.bash`)
to run the scripts using `nix-shell` where packages are available, and `docker` for older things.
