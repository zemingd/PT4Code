input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

if a >= 13
    puts b
elsif a >= 6
    puts b / 2
else
    puts 0
end