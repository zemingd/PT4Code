#10003 : small, large, or equal

input = gets.chomp.split(" ")

a = input[0].to_i
b = input[1].to_i

if a < b
  puts "a < b"
elsif a > b
  puts "a > b"
else puts "a == b"
end