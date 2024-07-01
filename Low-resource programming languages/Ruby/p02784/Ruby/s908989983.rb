h,n=gets.chomp.split(" ").map(&:to_i);
a = gets.chomp.split(" ").map(&:to_i);

atk = a.sum
if h <= atk
  puts "Yes"
else
  puts "No"
end