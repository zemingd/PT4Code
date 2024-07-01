s = gets.chomp.split("").sort
t = gets.chomp.split("").sort.reverse

if s.to_s < t.to_s
    puts "Yes"
else
    puts "No"
end