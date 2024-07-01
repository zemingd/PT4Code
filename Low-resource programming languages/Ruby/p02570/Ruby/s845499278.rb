a = gets.split(" ")
if (a[0].to_i / a[2].to_i).to_f <= a[1].to_f
  puts "Yes"
else
  puts "No"
end
