n,m = $stdin.gets.split.map(&:to_i)
ans_n = ans_m = 0
if n >= 1
  ans_n = n * (n-1)
else
  ans_n = 0
 end
if m >= 1
  ans_m = m * (m-1)
else
  ans_m = 0
end
puts (ans_n+ans_m)/2