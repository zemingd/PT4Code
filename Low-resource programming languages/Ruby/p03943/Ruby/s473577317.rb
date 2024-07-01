candy = gets.chomp.split.map(&:to_i)

candy.sort!
if candy[0] + candy[1] == candy[2]
    puts "Yes"
else
    puts "No"
end