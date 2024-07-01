x = gets.to_i
if [3, 5, 7].any? {|n| n == x}
  puts "YES"
else
  puts "NO"
end