n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
count, result = 0, []
(0...n).each do |i|
  if result.count + 1 == arr[i]
    result << arr[i]
  else
    count += 1
  end
end
if result.count != 0
  puts count
else
  puts "-1"
end