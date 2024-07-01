str = gets.chomp
if str.include? "RRR"
    puts 3
elsif str.include? "RR"
    puts 2
elsif str.include? "R"
    puts 1
else
    puts 0
end