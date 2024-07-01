arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

a = arr[1] - arr[0]
b = arr[2] - arr[1]
c = arr[2] - arr[0]

if
  a.abs > arr[3] or b.abs > arr[3] or c.abs > arr[3]
  puts "No"
else
  puts "Yes"
end
  
