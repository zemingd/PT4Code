array = gets.chomp.split(" ")
x = array[0].to_i
a = array[1].to_i
b = array[2].to_i

if -a + b < 0
    puts "delicious"
elsif -a + b <= x
    puts "safe"
else
    puts "dengerous"
end
