n = gets.chomp.to_i
if n <=104
    puts 0
elsif 105 <= n && n <= 134
    puts 1
elsif 135 <= n && n <= 164
    puts 2
else
    puts 3
end