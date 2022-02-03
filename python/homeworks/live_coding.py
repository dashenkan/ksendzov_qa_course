# a = 5
# b = '55'
# c = int(b)
# print(a, b, c, sep='\n')
# f = {'name': 'Daria',
#      'age': 30,
#      'salary': '1000'}
# d = [a, b, c, 0.5, True,[7, 'here', 10], f]
# for i in d:
#     print(i)
# print(d[3])
# print(d[3:])
# print(d[3:6])
# print(d[::-1])
# intes = []
# for i in d:
#     if type(i) == dict:
#         for k, j in i.items():
#             if type(j) == int:
#                 intes.append(j)
#                 print(k, j)
#     elif type(i) == int:
#         print(i)
#     elif type(i) == list:
#         for z in i:
#             if type(z) == int:
#                 intes.append(z)
#                 print(z)
# print(intes)
#
#
#

# for i in d:
#     if type(i) == dict:
#         for k, j in i.items():
#             if type(j) == int:
#             print(k, j)
#     elif type(i) == int:
#         print(i)
#



list1 = ['а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я']
list2 = []
# i = 0
# for i in range(len(list1)):
#     list2.append(i+1)
# # print(list2)
# gg = []
# zz = []
# for t in list2:
#     if t%2 ==0:
#         gg.append(t)
#     else:
#         zz.append(t)
oo = []
#
# for x in range(len(list1)):
#
#     for k in range(len(list2)):
#         if ((list2[k]) % 2 == 0) and list2[k]>0:
#             oo.append(list2[k])
#             oo.append(list1[x])
#             list2[k]-=(1+len(list2))
#             break
#     if sc > (()/2)
#         for r in range(len(list2)):
#             if ((list2[r]) % 2 != 0) and list2[k] > 0:
#                     oo.append(list2[r])
#                     oo.append(list1[x])
#                      list2[r] -= (1 + len(list2))
#                     break


count = -1
for i in range(len(list1)):
    if i%2 == 0:
        list2.append(i+2)
        count += 1
        list2.append(list1[count])
for i in range(len(list1)):
    if i%2 == 1:
        list2.append(i)
        count += 1
        list2.append(list1[count])
print(list2)

# print(oo)
# print(gg)
# print(zz)
# yy = gg+zz
# print(yy)
# uu = []
# x = 0
# for x in range(len(yy)):
#     uu.append(yy[x])
#     uu.append(list1[x])
# print(uu)

# for v in yy:
#     uu.append(v)
#     for x in list1:
#         uu.append(x)
#     continue
#
# print(uu)
