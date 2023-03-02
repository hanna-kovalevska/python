list = ['The price of apples increased in winter', 'But Job likes apple jam', 'The price of jam is even higher', 'John will be making jam in the summer']
newlist = [x.upper() if 'price' in x else x for x in list]
print(newlist)