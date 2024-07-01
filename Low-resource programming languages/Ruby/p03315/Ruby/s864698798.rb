s = gets.chomp
sum = 0
s.length.times do |i|
  sum += 1 if s[i]=="+"
  sum -= 1 if s[i]=="-"
end
puts sum
