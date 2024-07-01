a,b,c = gets.chomp.split(" ").map(&:to_i);
if c <= b && c >= a
    puts "Yes"
else
    puts "No"
end