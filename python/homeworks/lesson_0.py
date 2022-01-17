
# 1) Создать переменную типа String
a = 'Daria'

# 2) Создать переменную типа Integer
b = 5

# 3) Создать переменную типа Float
c = 7.8

# 4) Создать переменную типа Bytes
d = b'deny'

# 5) Создать переменную типа List
f = [1, 2, 3]

# 6) Создать переменную типа Tuple
h = tuple('Hello world!')

# 7) Создать переменную типа Set
k = set('Hello')

# 8) Создать переменную типа Frozen set
l = frozenset('hello')

# 9) Создать переменную типа Dict
m = {'first': 1, 'second': 2}

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(a, type(a))
print(b, type(b))
print(c, type(c))
print(d, type(d))
print(f, type(f))
print(h, type(h))
print(k, type(k))
print(l, type(l))
print(m, type(m))


# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
a = 'Summer'
b = 'Winter'
c = a + b
print(c)


# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
name = 'Daria'
age = 30
result = (name, age)
print(result)


# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
name = 'Daria'
age = 30
print(name + ' ' + str(age))