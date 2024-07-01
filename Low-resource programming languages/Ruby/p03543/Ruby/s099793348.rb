n = gets.chomp
if n[0,3].to_i % 111 == 0 || n[1,3].to_i % 111 == 0
    puts "Yes"
else
    puts "No"
end