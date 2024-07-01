n = gets.to_i
s = gets.chomp.chars
max = 0
(0..(n-2)).each do |i|
  a, b = s[0..i], s[(i+1)..-1]
  max = [max, (a & b).count].max
end

puts max