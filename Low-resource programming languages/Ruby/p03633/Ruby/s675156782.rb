n = gets.to_i
t = n.times.map{gets.to_i}.sort!
i = 1
ans = 0
while true
  tmp = t[n-1] * i
  t.each do |t|
    if tmp % t == 0 then ans = ans + 1 end
  end
  if ans == n
    break
  else
    ans = 0
    i = i + 1
  end
end
puts tmp