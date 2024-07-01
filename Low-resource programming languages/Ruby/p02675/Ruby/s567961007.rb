a = gets.chomp.to_i
a %= 10
#puts a

puts "hon" if a.to_s =~ /[2,4,5,7,9]/
puts "pon" if a.to_s =~ /[0,1,6,8]/
puts "bon" if a == 3