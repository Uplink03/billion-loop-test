function main()
    i = 0
    while i < 1000 * 1000 * 1000
        j = i / 9.0
        if i % (100 * 1000 * 1000) == 0
            println(j)
        end
        i += 1
    end
end

main()
