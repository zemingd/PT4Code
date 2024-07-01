s = gets.chomp.split("").sort
t = gets.chomp.split("").sort.reverse

if s.join < t.join
    puts "Yes"
else
    puts "No"
end