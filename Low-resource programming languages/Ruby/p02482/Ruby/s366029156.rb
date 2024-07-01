input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
if a < b then puts "a < b"
elsif a > b then puts "a > b"
else puts "a == b"
end