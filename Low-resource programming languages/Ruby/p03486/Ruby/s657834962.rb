i = gets.chomp.split("").sort.join
n = gets.chomp.split("").sort.reverse.join
if i<n
    puts "Yes"
else
    puts "No"    
end