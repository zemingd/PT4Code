n = gets.to_i
a = Array.new(n)
n.times do |i|
  t = gets.to_i - 1
  a[i] = t
end
p = 0
i = 0
while i < n
  i = i + 1
  p = a[p]
  if p == 1
    break
  end
end
if i == n
  puts -1
else
  puts i
end
