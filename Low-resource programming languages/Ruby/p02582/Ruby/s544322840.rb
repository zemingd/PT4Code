s = gets.chomp
if s == "RRR" then
    puts 3
elsif s == "SRR" || s == "RRS" then
    puts 2
elsif s.include?("R") then
    puts 1
else
    puts 0
end