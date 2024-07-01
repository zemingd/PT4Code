s = gets.chomp
d = []
for i in 0..s.length-1
  d << s[i] if i%2 == 0
end

puts d.join
