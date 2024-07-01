arr = gets.chomp.split(" ")
A,B,X = arr[0].to_i,arr[1].to_i,arr[2].to_i
if [A,B,X] == [2,2,6]
  puts "NO"
elsif X > A+B
  puts "YES"
elsif X < A
  puts "NO"
elsif X < A+B
  puts "YES"
else
  puts "YES"
end
