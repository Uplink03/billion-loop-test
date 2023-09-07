# Billion iteration loops

This repository contains code that loops a billion times, written in a handful of languages.

I use this to get a ballpark idea about which languages are fast and which are slow. There's
barely anything scientific going on here.

The [Billion_Loop_Test.mdown](Billion_Loop_Test.mdown) file is the original collection.

I unearthed it from my drive and created separate files and a shell script (`benchmark.bash`)
to run the scripts using `nix-shell` where packages are available, and `docker` for older things.

## More scientific information

If you're interested in language performance in a more scientific manner, here are some resources:

* [The Computer Language Benchmarks Game](https://benchmarksgame-team.pages.debian.net/benchmarksgame/index.html)
* [Energy Efficiency across Programming Languages - Rui Pereira et al](https://repositorio.inesctec.pt/server/api/core/bitstreams/d606d7dd-be10-4bc7-ada6-5c0c91fe1afb/content)