i = gets.chomp
if i[-1] == '3' then
    puts "bon"
elsif i[-1] == '0' or i[-1] == '1' or i[-1] == '6' or i[-1] == '8' then
    puts "pon"
else
    puts "hon"
end