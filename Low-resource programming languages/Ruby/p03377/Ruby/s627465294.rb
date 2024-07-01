arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

if arr[2] >= arr[0] and arr[0] + arr[1] >= arr[2]
  puts "YES"
else
  puts "NO"
end