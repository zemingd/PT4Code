a,b,c = gets.split(' ').map(&:to_i)
res = c - (a - b)

puts  res > 0  ? res : 0