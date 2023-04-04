txt = 'Денис, Олег, Вася, Петя,Дима,Женя'
list = [x.strip() for x in txt.split(',')]
print(list)
