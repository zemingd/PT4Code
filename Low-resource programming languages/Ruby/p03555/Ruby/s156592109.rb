arr = []
2.times do
  arr << gets.chomp
end

if arr[0] == arr.reverse[0].reverse && arr[1] == arr.reverse[1].reverse
  puts "YES"
else
  puts "NO"
end