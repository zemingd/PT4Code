a = gets.split " "
b = true
 
b = false if a[0].to_i > a[1].to_i
b = false if a[1].to_i > a[2].to_i

if b
  puts "Yes"
else
  puts "No" 
end