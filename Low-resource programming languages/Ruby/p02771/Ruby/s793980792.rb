array= gets.chomp.split.map(&:to_i)

if array.uniq.length == 2
    puts "Yes"
else
    puts "No"
end
