a , b , c = gets.split
if a.to_i + b.to_i == c.to_i || b.to_i + c.to_i == a.to_i || a.to_i + c.to_i == b.to_i then
  puts "Yes"
else
  puts "No"
end