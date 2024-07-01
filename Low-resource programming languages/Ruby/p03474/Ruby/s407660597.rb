A, B = gets.split
x = gets.chomp.split("-")
if x.size != 2 || x[0].size != A || x[1].size != B
  puts "No"
else
  puts "Yes"
end