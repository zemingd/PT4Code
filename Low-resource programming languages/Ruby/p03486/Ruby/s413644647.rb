a=gets.chomp.split("").sort.join
b=gets.chomp.split("").sort.reverse.join

if a < b
  puts "Yes"
else
  puts "No"
end
