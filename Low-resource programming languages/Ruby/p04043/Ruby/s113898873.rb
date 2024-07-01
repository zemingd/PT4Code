a, b, c = gets.split(' ').map{|i| i.to_i}
l = [a, b, c]

if l.count(5) == 2 && l.count(7)
  puts "YES"
else
  puts "NO"
end