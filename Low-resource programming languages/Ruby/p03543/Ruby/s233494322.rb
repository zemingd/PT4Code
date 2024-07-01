n = gets.chomp.split("")

if n[1] != n[2]
    puts "No"
elsif n[0] == n[1] || n[2] == n[3]
    puts "Yes"
else
    puts "No"
end
