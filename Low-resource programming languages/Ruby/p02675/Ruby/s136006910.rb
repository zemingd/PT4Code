a = gets.chomp.to_i
a %= 10
#puts a

[2,4,5,7,9].each do |hon|
  puts "hon" if a == hon
end

[0,1,6,8].each do |pon|
  puts "pon" if a == pon
end

puts "bon" if a == 3