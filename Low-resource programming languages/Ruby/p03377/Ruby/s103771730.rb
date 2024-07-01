arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

if arr[0] > arr[2]
  puts "NO"
elsif
  arr[0] = arr[2]
  puts "YES"
elsif
  arr[0] < arr [2] and arr[2] - arr[0] <= arr[1]
  puts "YES"
else
  puts "NO"
end