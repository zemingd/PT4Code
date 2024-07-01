n = gets.to_i
q = gets.split.map(&:to_i)
 
count = 0
x = q.sort
 
n.times{|i|
  count += 1 if q[i] != x[i]
  }
 
if count == 0 or count == 2
  puts "YES"
else
  puts "NO"
end