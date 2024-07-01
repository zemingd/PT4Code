n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!
ans = 0
i = 0
tmp = a[0].to_i
while tmp <= x && i < n do
  if i == n-1
    if a[i] == x
      ans += 1
    end
  else
    x -= tmp
    ans += 1
    tmp = a[i+1].to_i
  end
  i +=1
end
puts ans
