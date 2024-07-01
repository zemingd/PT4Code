x, y = gets.chop.split.map(&:to_i)

a = [x, y]

r1 = a.max

a[a.index(a.max)] = a[a.index(a.max)] -1

r2 = a.max

p r1+r2