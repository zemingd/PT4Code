x = gets
array = gets.split(" ").map(&:to_i)
new_array = array.uniq

if array.length == new_array.length
  puts "YES"
else
  puts "NO"
end