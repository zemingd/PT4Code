S = gets.chomp

if S == "RRR" then
    puts 3
elsif S.include?("RR") then
    puts 2
elsif S.include?("R") then
    puts 1
else
    puts 0
end
