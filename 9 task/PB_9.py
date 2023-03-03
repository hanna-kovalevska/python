def fun_list (list1, list2):
    list3=[]
    for x in list1:
        if x not in list2:
            list3.append(x)
    return list3

list1 = [1, 2, 3, 4, 5]
list2 = [1, 3, 4]
print(fun_list (list1, list2))