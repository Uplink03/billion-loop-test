for i = 0, 1000 * 1000 * 1000, 1 do
    j = i / 9.0
    if i % (100 * 1000 * 1000) == 0 then
        print (j)
    end
end
