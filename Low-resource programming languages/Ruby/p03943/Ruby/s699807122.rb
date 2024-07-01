x = gets.chomp.split(" ").map(&:to_i)
all = x.inject(:+)
if all % 2 == 0
    puts "Yes"
else
    puts "No"
end