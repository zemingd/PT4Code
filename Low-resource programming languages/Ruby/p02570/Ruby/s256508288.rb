a = gets.split(" ")
b = (a[0].to_f / a[2].to_f)
if b.ceil <= a[1].to_i
  puts "Yes"
else
  puts "No"
end