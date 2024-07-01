a, b = gets.split(" ").map{ |i| i.to_i}
if a*b%2==0 then
  puts "No"
else
  puts "Yes"
end