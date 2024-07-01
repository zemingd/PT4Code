a = gets.to_i
b = gets.to_i

if 0 <= a && a <= 5 then
    puts 0
elsif 6 <= a && a <= 12 then
    puts b / 2
else 
    puts b
end