@micropython.native
def loop():
    target = 1000 * 1000 * 1000
    div = 100 * 1000 * 1000
    i = 0
    while i < target:
        j = i / 9.0
        if i % div == 0:
            print(j)
        i += 1

loop()
