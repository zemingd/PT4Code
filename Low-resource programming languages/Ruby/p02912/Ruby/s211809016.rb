n,m = gets.split.map(&:to_i)
price = gets.split.map(&:to_i)
count = Array.new(n,0)
price.sort!
count[-1] += 1
check = 1
if n == 1
  puts price[0] / (2**m)
  exit
end
while check < m
  for i in 2..n
    check += 1
    if price[-i]/(2**count[-i]) > price[-1]/(2**(count[-1]+1))
      count[-i] += 1
    else
      count[-1] += 1
      break
    end
    if check >= m
      break
    end
  end
end
ans = 0
n.times{|i| ans += price[i]/(2**count[i])}
puts ans
