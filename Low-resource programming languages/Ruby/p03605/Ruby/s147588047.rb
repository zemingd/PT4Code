n = gets.chomp.to_i
if (n + 1) % 10 == 0 || n - 90 >= 0
    puts "Yes"
else
    puts "No"
end
