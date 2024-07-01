arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

x = arr[0] * arr[1]

if x <= arr[2]
  puts x
else
  puts arr[2]
end