a,b = gets.split(" ")

if ((a.to_i * b.to_i) % 2) == 0
  puts "No"
else
  puts "Yes"
end
