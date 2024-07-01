A, B, C = gets.split(" ")
if [A, B, C].uniq.size == 2
  puts "Yes"
else
  puts "No"
end