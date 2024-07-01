str = gets.chomp!
if str.index("RRR") then
    puts "3"
elsif
    str.index("RR") then
    puts "2"
elsif
    str.index("R") then
    puts "1"
else
    puts "0"
end