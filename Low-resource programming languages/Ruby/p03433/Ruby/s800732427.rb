n=gets.chomp.to_i
a=gets.chomp.to_i
if a-(n%500)>0
  puts "Yes"
else
  puts "No"
end