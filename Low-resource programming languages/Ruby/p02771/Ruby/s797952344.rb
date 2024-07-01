a, b , c = gets.chomp.split(" ")
if a == b && b != c
    puts "Yes"
elsif a == c && a != b
    puts "Yes"
elsif b == c && a != b
    puts "Yes"
else
    puts "No"
end