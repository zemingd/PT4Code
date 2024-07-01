n = gets.to_i
a = gets.chomp.split
b = a.sort_by{|x| x}
 
count = 0
n.times do |i|
  count += 1 if a[i] != b[i]
end
 
if count <= 2
  print "YES"
else
  print "NO"
end