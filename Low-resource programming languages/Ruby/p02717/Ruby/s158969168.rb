X = gets.to_i
Y = gets.to_i
Z = gets.to_i

A = [X]
B = [Y]
C = [Z]

A[0], B[0] = B[0], A[0]
A[0], C[0] = C[0], A[0]

i = " "

print A[0], i, B[0], i, C[0]