a, b = gets.split.map(&:to_i)
d = a / b
r = a % b
s = a.to_f / b
puts [d, r, s].join(' ')

