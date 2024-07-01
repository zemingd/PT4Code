h, n = gets.chomp.split(" ").map(&:to_i);
as = gets.chomp.split(" ").map(&:to_i);

sum = as.sum

if h <= sum
  puts "Yes"
else
  puts "No"
end