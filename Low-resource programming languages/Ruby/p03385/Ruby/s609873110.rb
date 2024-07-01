input = gets.chomp
if input.split("").sort.join == "abc" then
    puts "Yes"
else
    puts "No"
end