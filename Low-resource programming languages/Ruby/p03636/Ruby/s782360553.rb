s = gets.chomp
l = s.length
first = s.slice(0, 1)
last = s.slice(l - 1, l)
puts "#{first}#{l - 2}#{last}"
