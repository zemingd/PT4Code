s = gets.to_s

a = s.index("A").to_i
z = s.rindex("Z").to_i

puts z-a+1