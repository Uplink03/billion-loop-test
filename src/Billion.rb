#!/usr/bin/ruby

for i in 0..1000 * 1000 * 1000
    j = i / 9.0
    if i % (100 * 1000 * 1000) == 0
        puts "#{j}"
    end
end
