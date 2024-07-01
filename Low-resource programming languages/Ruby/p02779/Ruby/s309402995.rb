n = gets.to_i
arr = gets.chomp.split(' ')
if arr.size == arr.uniq.size
  puts "YES"
else
  puts "NO"
end