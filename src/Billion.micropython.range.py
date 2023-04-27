@micropython.native
def loop():
    for i in range(0, 1000 * 1000 * 1000):
        j = i / 9.0
        if i % (100 * 1000 * 1000) == 0:
            print(j)

loop()
