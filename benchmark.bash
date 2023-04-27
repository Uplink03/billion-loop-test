#!/bin/bash

set -e

Benchmark_C_O0()
{
    nix-shell -p gcc --run 'gcc -std=gnu99 -O0 -o out/c1 src/Billion.c && time -p out/c1'
}

Benchmark_C_Os()
{
    nix-shell -p gcc --run 'gcc -std=gnu99 -Os -o out/c2 src/Billion.c && time -p out/c2'
}

Benchmark_C_O2()
{
    nix-shell -p gcc --run 'gcc -std=gnu99 -O2 -o out/c3 src/Billion.c && time -p out/c3'
}

Benchmark_Java()
{
    nix-shell -p jdk --run 'time -p java src/Billion.java'
}

Benchmark_Julia_func()
{
    nix-shell -p julia --run 'time -p julia src/Billion.func.jl'
}

Benchmark_Julia_top()
{
    nix-shell -p julia --run 'time -p julia src/Billion.top.jl'
}

Benchmark_Haskell()
{
    nix-shell -p ghc --run 'ghc -O2 -o out/haskell src/Haskell/Billion.hs && time -p out/haskell'
}

Benchmark_JS()
{
    nix-shell -p nodejs --run 'time -p node src/Billion.js'
}

Benchmark_Neko()
{
    nix-shell -p neko --run 'cd src && haxe --neko ../out/haxe.n --main Billion Billion.hx && time -p neko ../out/haxe.n'
}

Benchmark_Lua_51()
{
    nix-shell -p lua51Packages.lua --run 'time -p lua src/Billion.lua'
}

Benchmark_Lua_52()
{
    nix-shell -p lua52Packages.lua --run 'time -p lua src/Billion.lua'
}

Benchmark_Lua_53()
{
    nix-shell -p lua53Packages.lua --run 'time -p lua src/Billion.lua'
}

Benchmark_Lua_54()
{
    nix-shell -p lua5_4 --run 'time -p lua src/Billion.lua'
}

Benchmark_Lua_Jit_20()
{
    nix-shell -p luajit_2_0 --run 'time -p luajit src/Billion.lua'
}

Benchmark_Lua_Jit()
{
    nix-shell -p luajit --run 'time -p luajit src/Billion.lua'
}

Benchmark_PHP_53()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:5.3-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_54()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:5.4-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_55()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:5.5-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_56()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:5.6-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_70()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:7.0-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_71()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:7.1-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_72()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:7.2-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_73()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:7.3-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_74()
{
    docker run --rm -v ./src/Billion.php:/Billion.php:ro php:7.4-cli bash -c 'time -p php /Billion.php'
}

Benchmark_PHP_80()
{
    nix-shell -p php80 --run 'time -p php src/Billion.php'
}

Benchmark_PHP_81()
{
    nix-shell -p php81 --run 'time -p php src/Billion.php'
}

Benchmark_PHP_82()
{
    nix-shell -p php82 --run 'time -p php src/Billion.php'
}

Benchmark_Prolog_gplc()
{
    nix-shell -p gprolog --run 'gplc --min-bips -o out/prolog-gplc src/Billion.pro && time -p out/prolog-gplc'
}

Benchmark_Prolog_swipl()
{
    nix-shell -p swiProlog --run 'time -p swipl -f -q -O src/Billion.pro'
}

Benchmark_Erlang_escript()
{
    nix-shell -p erlang --run 'time -p escript src/Billion.escript.erl'
}

Benchmark_Erlang_erlc()
{
    nix-shell -p erlang --run 'erlc -o out/ src/billion.erl && time -p escript out/billion.beam'
}

Benchmark_Python_27_range()
{
    NIXPKGS_ALLOW_INSECURE=1 nix-shell --impure -p python27 --run 'time -p python src/Billion.py2.range.py'
}

Benchmark_Python_27_while()
{
    NIXPKGS_ALLOW_INSECURE=1 nix-shell --impure -p python27 --run 'time -p python src/Billion.py2.while.py'
}

Benchmark_Python_3_11_range()
{
    nix-shell -p python311 --run 'time -p python src/Billion.py3.range.py'
}

Benchmark_Python_3_11_while()
{
    nix-shell -p python311 --run 'time -p python src/Billion.py3.while.py'
}

Benchmark_Python_pypy_range()
{
    nix-shell -p pypy --run 'time -p pypy src/Billion.py3.range.py'
}

Benchmark_Python_pypy_while()
{
    nix-shell -p pypy --run 'time -p pypy src/Billion.py3.while.py'
}

Benchmark_Python_micro_range()
{
    nix-shell -p micropython --run 'time -p micropython src/Billion.py3.range.py'
}

Benchmark_Python_micro_while()
{
    nix-shell -p micropython --run 'time -p micropython src/Billion.py3.while.py'
}

Benchmark_Perl()
{
    nix-shell -p perl --run 'time -p perl src/Billion.pl'
}

Benchmark_Ruby_19()
{
    docker run --rm -v ./src/Billion.rb:/Billion.rb:ro ruby:1.9 bash -c 'time -p ruby /Billion.rb'
}

Benchmark_Ruby_27()
{
    nix-shell -p ruby --run 'time -p ruby src/Billion.rb'
}

Benchmark_Ruby_31()
{
    nix-shell -p ruby_3_1 --run 'time -p ruby src/Billion.rb'
}

Benchmark_Rust()
{
    nix-shell -p rustup --run 'cd src/Rust && cargo build && time -p cargo run --release'
}

run()
{
    local Suite="$1"
    echo "Running $Suite"
    "$Suite"
}

if [[ $# -gt 0 ]]; then
    for SuiteName in "$@"; do
        run Benchmark_"$SuiteName"
    done
else
    Suites=($(compgen -A function | grep '^Benchmark_'))
    for Suite in "${Suites[@]}"; do
        run "$Suite"
    done
fi
