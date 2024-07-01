arr = gets.chomp.split(" ")
A,B,X = arr[0],arr[1],arr[2]
if X > A+B
  puts "YES"
elsif X < A
  puts "NO"
else
  puts "YES"
end
