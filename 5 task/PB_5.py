def division(my_list, n):
    #я хочу, щоб воно розбилась рівномірно: якщо 22 на 5 розбивати, то буде: 5, 5, 4, 4, 4
    l = len(my_list)
    k = int(l/n) # мінімальна кількість елементів в розбієніїї (на прикладі: 4)
    d= l - n*k #кількість елементів, які будуть більше, ніж мінімальне (на прикладі: 2 - дві п'ятірки)
    i =0 
    new_list =[]
    for j in range(d): #заповнюємо перші елементи, що на 1 більше, ніж мінімальний (наши п'ятірки)
        new_list.append(my_list[i:i+k+1])            
        i+=k+1
    while i < l: #заповнюємо всі інші елементи
        new_list.append(my_list[i:i+k])
        i+=k
    return new_list

def checking(my_list, n):
    if n <= 0:
        print("Your number is incorrect")
        return my_list
    elif n> len(my_list):
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