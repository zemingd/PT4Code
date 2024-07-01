arr = gets.chomp.split("")
arr2 = gets.chomp.split("")

if arr.reverse == arr2 && arr2.reverse == arr
  puts "YES"
else
  puts "NO"
end
