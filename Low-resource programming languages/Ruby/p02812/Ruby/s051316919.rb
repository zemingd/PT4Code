n = gets.to_i
s = gets.chomp
res = 0
(0..(n-3)).each do |i|
  res += 1 if "ABC" == s[i..i+2]
end
puts res