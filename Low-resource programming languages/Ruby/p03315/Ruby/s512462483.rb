s = gets.chomp.chars
res = 0
s.each do |i|
  i == '+' ? res += 1 : res -= 1
end
puts res