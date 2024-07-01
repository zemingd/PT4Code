n = gets.to_i
a = gets.split.map(&:to_i)
b = a.uniq.length
if n == b
  puts "YES"
else
  puts "NO"
end