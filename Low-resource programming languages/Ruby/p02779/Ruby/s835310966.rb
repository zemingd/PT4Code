N = gets.to_i
a = []
a = gets.split.map(&:to_i)

l = a.size
ll = a.uniq.size
if l > ll
  puts "NO"
else
  puts "YES"
end