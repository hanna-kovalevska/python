list = ['my_string1','my_string2','my_string3']
str=''
for i in list:
    str=str+i+','
str=str[:-1]   #щоб видалити останню кому
print(str)