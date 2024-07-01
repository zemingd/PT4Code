num = gets.split.map(&:to_i)
a = num[0]
b = num[1]
c = num[2]
k = num[3]

if  a >= k
  puts a
elsif a + b >= k
  puts a
else
  puts a - (k - a - b)
end