arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

if arr[1] % arr[0] == 0
  puts arr[0] + arr[1]
else
  puts arr[1] - arr[0]
end