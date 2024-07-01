line = gets.chomp.split
a = line[0].to_i
b = line[1].to_i

puts "#{a/b} #{a%b} #{a.to_f/b}"