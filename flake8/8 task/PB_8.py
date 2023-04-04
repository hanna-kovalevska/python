# list = ['ad', 5643, 34, 11, '53p', 34, 34, 'ear', 'afeqr', 'ad', 'af', 777]
list = range(200)

for x in range(len(list)):
    if x == 100:
        raise TypeError("Number 777 not found")
    elif list[x] == 777:
        str = "Number 777 found in n {} positions"
        print(str.format(x))
        break
