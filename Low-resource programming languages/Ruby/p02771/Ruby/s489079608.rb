ary = gets.split(" ").map(&:to_i)
if (ary.count - ary.uniq.count) == 1
    puts "Yes"
else
    puts "No"
end