n = gets.to_i
s = gets.chomp.split('')
num = min = s[1..-1].count('E')

(1..n).each do |i|
  num += 1 if s[i-1] == "W"
  num -= 1 if s[i] == "E"
  min = num if num < min
end
puts min