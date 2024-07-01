value = gets.chomp.split(" ")
a = value[0].to_i
b = value[1].to_i
x = value[2].to_i

if a<= x && x <= a+b
    puts "YES"
else
    puts "NO"
end