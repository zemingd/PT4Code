n,k = gets.chomp.split.map &:to_i

ans = 0
if n < k
  coin = (1..n).to_a
  ok = []
else
  coin = (1..k-1).to_a
  ok = (k..n).to_a
end

ans += ok.length / n.to_f

coin.each do |point|
  rate = 1 / n.to_f
  until(k < point)
    rate = rate / 2.to_f
    point = point * 2
  end
  ans += rate
end

p ans
