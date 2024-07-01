a = gets.split(" ")
if (a[0].to_i / a[2].to_i).ceil <= a[1].to_i
  puts "Yes"
else
  puts "No"
end