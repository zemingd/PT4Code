n = gets.to_i
a = gets.split.map(&:to_i)
 
count = 0
(1..n).each do |i|
  count += 1 if i != a[i-1]
end
 
if count == 0 || count == 2
  print "YES"
else
  print "NO"
end