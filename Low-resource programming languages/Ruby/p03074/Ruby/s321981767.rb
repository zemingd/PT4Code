n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp
cnt = 0
i = 0
j = 0
one = []
zero = []
while i < n
  one[j] = 0
  zero[j] = 0
  while i <= n && s[i] == "1"
    one[j] += 1
    i += 1
  end
  while i <= n && s[i] == "0"
    zero[j] += 1
    i += 1
  end
  j += 1
end

ans = []
ans[0] = 0

if (s[n-1] == "0" && k >= one.length) || (s[n-1] == "1" && k >= one.length - 1)
  ans[0] = n
else
  k.times do |a|
    ans[0] += one[a] + zero[a]
  end
  ans[0] += one[k]
  if one.length > 1
    i = 1
    while i < one.length - k
      ans[i] = ans[i-1] - one[i-1] - zero[i-1] + zero[i+k-1] + one[i+k]
      i += 1
    end
    ans[i] = ans[i-1] - one[i-1] - zero[i-1] + zero[i+k-1]
  end
end
puts ans.max
