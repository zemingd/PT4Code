n = gets.to_i
a = gets.split.map(&:to_i)

b = a.sort

if n.times.map{|i|a[i]!=b[i]}.select{|r|r}.count <= 2
  puts "YES"
else
  puts "NO"
end