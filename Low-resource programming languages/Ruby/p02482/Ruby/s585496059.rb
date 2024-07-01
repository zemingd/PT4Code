inp = gets.chomp.split(" ")
a = inp[0].to_i
b = inp[1].to_i
if a == b
    puts "a == b"
elsif a > b
    puts "a > b"
else
    puts "a < b"
end