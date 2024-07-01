n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
ans = 0
if n >= m
  puts 0
else
  x.sort!
  d = Array.new(m-1)
  for i in 0..(m-2)
    d[i] = x[i+1] - x[i]
  end
  d.sort!{|a, b| b <=> a}
  for i in (n-1)..(m-2)
    ans += d[i]
  end
  puts ans
end