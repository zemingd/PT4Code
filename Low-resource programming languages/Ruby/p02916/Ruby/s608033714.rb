n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

if a[-1] == n
puts(b.inject(:+)+c.inject(:+))
else
puts(b.inject(:+)+c.inject(:+)-c[a[-1]-1])
end