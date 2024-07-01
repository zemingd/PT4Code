N = gets.chomp.to_i
A = gets.split.map(&:to_i)

if (A.count - A.uniq.count) > 0
  puts "NO"
else
  puts "YES"
end