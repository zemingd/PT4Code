n = gets.to_i
s = n % 10

if s == 2 || s == 4 || s == 7 || s == 9
    puts "hon"
elsif s == 0 || s == 1 || s == 6 || s == 8
    puts "pon"
else
    puts "bon"
end