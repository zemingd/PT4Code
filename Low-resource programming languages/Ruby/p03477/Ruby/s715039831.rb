arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
a_j.to_i
end

l = arr[0] + arr[1]
r = arr[2] + arr[3]

if
  l < r
  puts "Right"
elsif
  l = r
  puts "Balanced"
else
  puts "Left"
end  
