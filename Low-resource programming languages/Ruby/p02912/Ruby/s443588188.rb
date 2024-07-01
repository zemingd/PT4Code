n,m = gets.split.map(&:to_i)
price = gets.split.map(&:to_i)
count = Array.new(n,0)
price.sort!
for i in 1..m
  min = 0
  max = n-1
  while max - min > 1
    if price[-1]/2 > price[(max+min)/2]
      min = (max+min)/2
    else
      max = (max+min)/2
    end
  end
  price[-1] /= 2
  price.insert(max,price[-1])
  price.delete_at(-1)
end
ans = 0
n.times{|j| ans += price[j]}
puts ans
