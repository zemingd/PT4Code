n,k = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
num2 = Array.new(n,"")
for i in 0..n-1
  num2[i] = (num[i].to_s(2)).split("")
end
zero = Array.new(48, n)
one = Array.new(48, 0)
for i in 0..n-1
  for j in 1..num2[i].length
    if num2[i][-j] == "1"
      one[-j] += 1
      zero[-j] -= 1
    end
  end
end
ans = 0
res = 0
for i in 0..47
  if ans+2**(47-i) <= k
    if zero[i] > one[i]
      ans += 2**(47-i)
    end
  end
end
for i in 0..n-1
  res += ans ^ num[i]
end
puts res
