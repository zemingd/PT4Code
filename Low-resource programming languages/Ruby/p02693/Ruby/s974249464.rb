k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)

if k > b
    puts "NG"
elsif k >= a && K <= b
    puts "OK"
elsif k * 2 <= b && k * 2 >= a 
    puts "OK"
else
    puts "NG"
end