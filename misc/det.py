#!/usr/bin/python3
a = eval(input())
num = 4 
seq = ()

def calc(idx, num):
    i = 0
    global seq
    if len(idx) == num:
            seq += (idx,)
            return
    while i < num:
        if len(idx) < num:
            for j in idx:
                if j == i:
                    break
            else:
                calc(idx + (i,), num)
        i += 1

def det(idx):
    sum = 0
    for k in idx:
        tmp = sgn = 1
        for i, j in enumerate(k):
            tmp *= a[i][j]
            l = i - 1
            while l >= 0:
                sgn *= (j - k[l])
                l -= 1
        if sgn > 0:
            sum += tmp
        else:
            sum -= tmp
    return sum

calc((), num)
#print(seq)
print(det(seq))
