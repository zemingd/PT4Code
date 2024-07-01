n = gets.chomp
case n[-1]
when "3" then puts "bon"
when "0", "1", "6", "8" then puts "pon"
else puts "hon"
end