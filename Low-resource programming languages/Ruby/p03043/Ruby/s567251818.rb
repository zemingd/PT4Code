n, k = gets.split.map(&:to_i)
a = [*1..n]
calc = 0
calc1 = 1/n.to_f
b = a.select {|i| i < k + 1}
length = a.length - b.length
b.each do |i|
  calc2 = 0
  coin = 0
  ans = i
  while k > ans
    ans = ans*2
    coin += 1
  end
  calc2 = (1/2.to_f)**coin
  calc += calc1*calc2
end
puts calc + (calc1*length)