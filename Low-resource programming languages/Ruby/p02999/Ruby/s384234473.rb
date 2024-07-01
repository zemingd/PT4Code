arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

if arr[0] >= arr[1]
 puts "10"
else
  puts "0"
end