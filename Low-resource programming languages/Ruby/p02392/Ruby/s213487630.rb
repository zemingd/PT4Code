n = gets.split(" ")
n[0]=n[0].to_i
n[1]=n[1].to_i
n[2]=n[2].to_i

if n[0] < n[1] && n[1] < n[2]
  puts "yes"
else
  puts "No"
end