a = []
x = 0;
ans = 0

n = gets.to_i
n.times do |i|
  a << gets.to_i
  a[i] -= 1
end

for i in 0..100010
  if x == 1
    ans = i
    break
  end
  x = a[x]
end

if ans != 0
  p ans
else
  puts "-1"
end
