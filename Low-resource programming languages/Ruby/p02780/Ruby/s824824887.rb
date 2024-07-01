N,K = gets.split.map(&:to_i)
P = gets.split.map {|n| n.to_i*(n.to_i+1)/2 / n.to_f }

sum = P[0, K].inject(:+).to_f
max = sum
while P.size > K
  sum = sum + P[K] - P.shift
  max = sum if max < sum
end
puts max