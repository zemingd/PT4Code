arr = gets.chomp.split().map!(&:to_i)
# puts canCommunicate(arr)
if (arr[0] - arr[2]).abs <= arr[3]
  puts "YES"
elsif (arr[0] - arr[1]).abs <= arr[3] && (arr[1] - arr[2] <= arr[3])
  puts "YES"
else
  puts "NO"
end