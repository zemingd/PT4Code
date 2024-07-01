a = gets.chomp.split(" ")
if a[1] == "+"
  puts a[0].to_i+a[2].to_i
else
  puts a[0].to_i-a[2].to_i
end