a = gets.chomp.split(" ").map(&:to_i).inject(:+)
if a >= 22
    puts "bust"
else
    puts "win"
end