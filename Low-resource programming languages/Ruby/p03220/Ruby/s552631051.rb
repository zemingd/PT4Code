n = gets.to_i
t,a = gets.split.map(&:to_f)
h = gets.split.map(&:to_f)
dif = 10000000
ans = -1
for num in 0..n-1 do
  k = t - h[num]* 0.006 
  if (k-a).abs < dif
    dif = (k-a).abs
    ans = num + 1 
  end
end
p ans