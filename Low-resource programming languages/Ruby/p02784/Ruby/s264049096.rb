h, a = gets.split(" ").map(&:to_i)
max = gets.split(" ").map(&:to_i).sum
if h > max
    puts "No"
else
    puts "Yes"
end