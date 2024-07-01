n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
c.push(0)

puts(b.inject(:+)+c.inject(:+)-c[a[-1]-1])