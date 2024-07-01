A, B, X = gets.chomp.split(" ").map(&:to_i)
if A+B > X
  puts "YES"
else
  puts "NO"
end
