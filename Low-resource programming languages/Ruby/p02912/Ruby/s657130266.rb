n,m = gets.split.map(&:to_i)
price = gets.split.map(&:to_i)
price.sort!
for i in 1..m
  min = -1
  max = n-1
  while max - min > 1
    if price[n-1]/2 > price[(max+min)/2]
      min = (max+min)/2
    else
      max = (max+min)/2
    end
  end
  price.insert(max,price[n-1]/2)
end
ans = 0
n.times{|j| ans += price[j]}
puts ans
