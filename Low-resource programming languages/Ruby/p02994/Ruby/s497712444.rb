n, l = gets.split(' ').map(&:to_i)

ary = (l..l+n-1).to_a
min = ary.map(&:abs).min

min *= -1 if l+n-1 <= 0

print ary.inject(&:+) - min