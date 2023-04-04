def division(my_list, n):
    """I want it to be divided evenly:
    if 22 is divided by 5, then it will be: 5, 5, 4, 4, 4.
    """
    len_list = len(my_list)
    number_elem_in_group = int(len_list/n)
    number_large_groups = len_list - n*number_elem_in_group
    i = 0
    new_list = []
    for j in range(number_large_groups):  # fill in the first larger groups
        new_list.append(my_list[i:i+number_elem_in_group+1])
        i += number_elem_in_group + 1
    while i < len_list:  # fill in other groups
        new_list.append(my_list[i:i+number_elem_in_group])
        i += number_elem_in_group
    return new_list


def checking(my_list, n):
    if n <= 0:
        print("Your number is incorrect")
        return my_list
    elif n > len(my_list):
        print("Your number is too high")
        return my_list
    else:
        return division(my_list, n)


list1 = [2, 5, 6, 3, 4]

print('For list1 and 3:')
print(checking(list1, 3))
print('For list1 and -7:')
print(checking(list1, -7))
print('For list1 and 9:')
print(checking(list1, 9))
print('For list1 and 5:')
print(checking(list1, 5))
print('For list1 and 2:')
print(checking(list1, 2))
