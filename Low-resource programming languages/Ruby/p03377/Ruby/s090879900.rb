arr = gets.chomp.split(' ').map(&:to_i)
if (arr[2] <= (arr[0] + arr[1]) && arr[2] >= arr[0])
  puts "YES"
else
  puts "NO"
end
