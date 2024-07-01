s = gets.chomp 

a = s.slice!(0,1)
b = s.slice!(-1,1)

puts "#{a}#{s.size}#{b}"