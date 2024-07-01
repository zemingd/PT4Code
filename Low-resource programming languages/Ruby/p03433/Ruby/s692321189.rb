money = gets.to_i
ichi_yen = gets.to_i

money %= 500

if (money - ichi_yen <= 0)
    puts "Yes"
else
    puts "No"
end