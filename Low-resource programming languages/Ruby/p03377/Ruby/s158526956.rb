A, B, X = gets.split.map(&:to_i)
if X < A
  puts "NO"
elsif X - A > B
  puts "NO"
else
  puts "YES"
end
