n = gets.chomp

if n[-1] == "3" then
    puts "bon"
elsif n[-1] == "0" || n[-1] == "1" || n[-1] == "6" || n[-1] == "8"
    puts "pon"
else
    puts "hon"
end