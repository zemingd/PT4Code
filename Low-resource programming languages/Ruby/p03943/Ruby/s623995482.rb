a = gets.chomp!.split(" ").map(&:to_i)

if a.max == a.sum - a.max
    puts "Yes"
else
    puts "No"
end
