n, k = gets.split.map(&:to_i)
s = gets.split.map(&:to_i).sort
ret = 0
for i in 0..n-1
  if s[i] <= k
    k -= s[i]
    ret += 1
  end
end

puts ret == n && k > 0 ? ret - 1 : ret
