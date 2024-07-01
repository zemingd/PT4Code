arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
a_j.to_i
end

if
  arr[1] >= arr[2]
  puts "delicious"
elsif
  arr[0] < arr[2] - arr[1]
  puts "dangerous"
else
  puts "safe"
end