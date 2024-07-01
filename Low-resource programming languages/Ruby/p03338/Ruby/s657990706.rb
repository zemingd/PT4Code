n = gets.to_i
s = gets.chomp.chars

res = 0
(1..n-1).each do |i|
  a = s[0...i]
  b = s[i..-1]
  res = [(a & b).length, res].max
end
puts res