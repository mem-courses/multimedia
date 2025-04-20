from math import *


def print_matrix(a, format='%5d'):
    for i in range(len(a)):
        for j in range(len(a[i])):
            print(format % a[i][j], end='')
        print()


def alpha(k):
    return 1 / sqrt(2) if k == 0 else 1


def dct2d(a):
    N = 8
    result = [[0.0 for _ in range(N)] for _ in range(N)]

    for u in range(N):
        for v in range(N):
            sum = 0
            for x in range(N):
                for y in range(N):
                    sum += (
                        a[x][y] *
                        cos((2 * x + 1) * u * pi / (2 * N)) *
                        cos((2 * y + 1) * v * pi / (2 * N))
                    )
            result[u][v] = 0.25 * alpha(u) * alpha(v) * sum  # 0.25 == 1/4
    return result


def coef(u, v):
    N = 8
    result = [[0.0 for _ in range(N)] for _ in range(N)]

    for x in range(N):
        for y in range(N):
            result[x][y] = 0.25 * alpha(u) * alpha(v) * (
                cos((2 * x + 1) * u * pi / (2 * N)) *
                cos((2 * y + 1) * v * pi / (2 * N))
            )
    return result


a = [
    [20] * 8,
    [20] * 8,
    [80] * 8,
    [80] * 8,
    [140] * 8,
    [140] * 8,
    [200] * 8,
    [200] * 8,
]

F = [[0] * 8 for _ in range(8)]


print_matrix(a)
print('F')
print_matrix(dct2d(a))
print('F(0,0)')
print_matrix(coef(0, 0), '%7.2f')
print('F(0,1)')
print_matrix(coef(0, 1), '%7.2f')
print('F(1,0)')
print_matrix(coef(1, 0), '%7.2f')
print('F(1,1)')
print_matrix(coef(1, 1), '%7.2f')
print('F(0,2)')
print_matrix(coef(0, 2), '%7.2f')