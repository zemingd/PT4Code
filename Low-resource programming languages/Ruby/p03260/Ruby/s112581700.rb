a,b =gets.chomp.split(" ").map(&:to_i);
#s = gets.chomp

if a & b & 1 == 1
  puts "Yes"
else
  puts "No"
end
