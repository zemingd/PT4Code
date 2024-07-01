n = gets.to_i
f = [0] * (n+1)
1.upto(n) do |i|
  i.step(n, i) { |j| f[j] += 1 }
end
p 1.step(n, 2).map { |i| f[i] }.count(8)