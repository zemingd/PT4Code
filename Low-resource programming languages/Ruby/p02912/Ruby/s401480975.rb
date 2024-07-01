_, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

while m > 0
  a.sort!
  a[-1] /= 2
  m -= 1
end
puts a.inject(:+)