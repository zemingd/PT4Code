n = gets.split.map(&:to_i)
  ans = 0
if n[1] > 0
  for i in 2..n[0]
    ans += n[1] + i - 1
  end
elsif n[1]+n[0]-1 < 0
  for i in 1..n[0]-1
    ans += n[1] + i - 1
  end
else
  for i in 1..n[0]
    ans += n[1] + i - 1
  end
end
puts ans
