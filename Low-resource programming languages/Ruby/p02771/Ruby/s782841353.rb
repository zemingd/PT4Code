array = gets.split(" ").map(&:to_i)

if array.uniq.size == 2
    puts "Yes"
else
    puts "No"
end
