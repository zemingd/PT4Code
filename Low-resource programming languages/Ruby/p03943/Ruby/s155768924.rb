candys = gets.chomp.split.map(&:to_i).sort

if candys[2] == candys[0] + candys[1]
    puts "Yes"
else
    puts "No"
end