n = gets.to_i
s = gets.chomp.split('')

b = s.count('.') 
w = n - b

puts [b, w].min