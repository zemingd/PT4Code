str = gets.to_s

n = str.split(" ")

if n[0] < n[1] && n[1] < n[2]
  puts "Yes"
else
  puts "No"
end