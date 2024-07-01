input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

if a < 6 
    puts "0"
elsif a < 13
    puts b/2
else
    puts b
end