print("hello, the second python iteration")


a = 10
b = 15
c = a + b
print(type(c), c)

d = 'Daria'
print(type(d), d)

v = 1,5
print(type(v), v)

q = True
print(type(q), q)

l = [a, b, c, d, v, q, '`maria', ['vadim',32, True]]
print(type(l), l)

if a < 5:
    print("a > 5", 'a > 5', """a > 5""")
else:
    print("Else")
