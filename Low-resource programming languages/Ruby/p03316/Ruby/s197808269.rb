n = gets.chomp
sum = 0
for i in 0...n.length do
  sum += n[i].to_i
end

if (n.to_i)%sum == 0
  puts "Yes"
else 
  puts "No"
end