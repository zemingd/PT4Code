X = gets.split(" ").map(&:to_i)
if X.uniq.size == 2
  puts "YES"
else
  puts "NO"
end