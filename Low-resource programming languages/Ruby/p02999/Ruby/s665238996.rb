input = gets.chomp.split(" ").map(&:to_i)
x = input[0]
a = input[1]

if x < a 
    puts "0"
else
    puts "10"
end