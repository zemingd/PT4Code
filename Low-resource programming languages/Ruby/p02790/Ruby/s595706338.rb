a,b = gets.chomp.split(' ')

aa = a * b.to_i
bb = b * a.to_i

puts [aa,bb].sort[0]
