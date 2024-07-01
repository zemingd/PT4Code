n = gets.to_i
s = gets.chomp
ans = 0
(0..n).each do |i|
  ans = [ans, (s[0...i].chars.uniq & s[i...n].chars.uniq).length].max
end
puts ans