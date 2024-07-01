a, b = gets.chomp.split(" ")
c, d = gets.split.map(&:to_i)

f = gets.chomp
f == a ? c -= 1 : d -= 1
puts "#{c} #{d}"