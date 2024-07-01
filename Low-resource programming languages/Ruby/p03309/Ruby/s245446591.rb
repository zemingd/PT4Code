n = gets.to_i
num = gets.strip.split.map(&:to_i)
for i in 1..n
  num[i-1] = num[i-1]-i
end
a = num.sort
if n%2==1
  b = num[(n-1)/2]
else
  b = (num[n/2-1]+num[n/2])/2
end
s = 0
for i in 0..n-1
  s += (num[i]-b).abs
end
puts s