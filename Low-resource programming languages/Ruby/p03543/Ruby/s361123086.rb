n = gets.chomp
if ((n[0] == n[1] and n[1] == n[2]) or (n[1] == n[2] and n[2] == n[3]))
    puts "Yes"
else
    puts "No"
end