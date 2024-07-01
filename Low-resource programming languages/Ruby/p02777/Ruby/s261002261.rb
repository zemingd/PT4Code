S, T = gets.split
A, B = gets.split.map(&:to_i)
U = gets

S == U ? A -= 1 : B -= 1

print A.to_s + ' ' + B.to_s