a,b=gets.chomp.split(" ").map(&:to_i);
if a*b % 2 == 0 then
  puts "Yes"
else
  puts "No"
end
