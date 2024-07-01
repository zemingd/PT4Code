mod = 10**9+7
mod2 = mod * 5

n, m = gets.to_s.split
n, m = n.to_i, m.to_i

stairs = [1] * (n+1)

m.times do
  stairs[gets.to_s.to_i] = 0
end

2.upto(n) do |i|
  next if stairs[i] == 0
  stairs[i] = stairs[i-1] + stairs[i-2]
  stairs[i] %= mod if stairs[i] > mod2
end

puts stairs[-1] % mod