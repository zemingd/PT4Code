num = gets.to_i
n = gets.split.map(&:to_i)
ans = 0
for i in 0..num-3
  if n[i] < 0
    n[i] *= -1
    n[i+1] *= -1
  end
  ans += n[i]
end
if (n[-2] < 0 && n[-1] < 0) || (n[-2] > 0 && n[-1] > 0)
  ans += (n[-2].abs + n[-1].abs)
else
  ans += (n[-2].abs - n[-1].abs).abs
end
puts ans 
