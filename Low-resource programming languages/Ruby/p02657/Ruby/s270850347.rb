n = gets.to_i
a = gets.split(" ").map(&:to_i)
i = 0
res = 1
 
while i < a.length do
  res = res * a[i]
  i += 1
end
 
if res > 10 ** 18
  puts "-1"
else
  puts res
end