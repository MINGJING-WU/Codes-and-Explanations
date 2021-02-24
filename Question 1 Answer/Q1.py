def cal(m, n, sum):
    a = m * m / 2 + m / 2
    b = sum - a
    l = (n - 1) * 2 + 2
    c = [0 for i in range(n)]
    A = [0 for i in range(l)]

    sum1 = 0
    d1 = 0
    d2 = 0
    s = ''

    f = open("output_question_1.txt", "a")

    for i in range(1, n - 1 + 1):
        c[i] = 1
        sum1 = sum1 + c[i]

    for i in range(1, n - 1 + 1):
        if sum1 == b:
            if i == 1:
                d1 = c[n - i]
                d2 = n - i
            break
        else:
            for j in range(1, m - 1 + 1):
                if sum1 == b:
                    d1 = c[n - i]
                    d2 = n - i
                    break
                else:
                    c[n - i] = c[n - i] + 1
                    sum1 = sum1 + 1
                    d1 = c[n - i]
                    d2 = n - i

    for i in range(1, d2 - 1 + 1):
        A[i] = 'R'

    for i in range(1, d1 - 1 + 1):
        A[d2 - 1 + i] = 'D'

    A[d1 + d2 - 1] = 'R'

    for i in range(d1, m - 1 + 1):
        A[d2 + i] = 'D'

    for i in range(d2, n - 2 + 1):
        A[m + i] = 'R'

    for one in A:
        if str(one) != '0':
            s = s + str(one)

    print(str(sum) + ' ' + s[0:] + '\n')
    f.write(str(sum) + ' ' + s[0:] + '\n')

    f.close()


if __name__ == '__main__':
    q = [[9, 9, 65], [9, 9, 72], [9, 9, 90], [9, 9, 110], [90000, 100000, 87127231192], [90000, 100000, 5994891682]]
    for oneq in q:
        m, n, sum = oneq
        cal(m, n, sum)
