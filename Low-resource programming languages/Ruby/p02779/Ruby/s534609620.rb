n = gets.to_i
a=gets.split(" ").map(&:to_i)

if (a.count - a.uniq.count) == 0
  puts "YES"
else
  puts "NO"
end
