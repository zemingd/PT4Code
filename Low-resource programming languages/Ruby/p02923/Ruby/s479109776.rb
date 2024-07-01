n = gets.to_i
k = gets.chomp.split(" ").map(&:to_i)
t = 1
now = 0
max = 0
while t < n do
if k[t-1] >= k[t] then
  t += 1
  now += 1
else 
  t += 1
  if max < now then
  max = now
  end
  now = 0
end
end
p now