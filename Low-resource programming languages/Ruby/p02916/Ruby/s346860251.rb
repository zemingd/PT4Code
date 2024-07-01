n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
c = gets.split.map &:to_i

result = 0

a.each_cons(2){ |x| result += c[x[0] - 1] if x[0]+1 == x[1] }

result += b.inject(:+)

puts result