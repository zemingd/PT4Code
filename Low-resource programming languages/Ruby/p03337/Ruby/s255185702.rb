a = gets.split(' ').map(&:to_i)
b = []
b[0] = a[0] + a[1]
b[1] = a[0] - a[1]
b[2] = a[0] * a[1]

p b.max