input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
x = input[2].to_i

if a + b < x || a > x
    puts "NO"
else
    puts "YES"
end