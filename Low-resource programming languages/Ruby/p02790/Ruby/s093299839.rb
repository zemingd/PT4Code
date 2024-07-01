a,b = gets.chomp.split.map(&:to_i)

x = a.to_s * b
y = b.to_s * a

puts [x,y].max