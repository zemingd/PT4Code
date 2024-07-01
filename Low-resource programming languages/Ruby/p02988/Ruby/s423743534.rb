N=gets.to_i
P=gets.split.map(&:to_i)

ans=0
(1..N-2).each do |i|
  ans += 1 if (P[i] < P[i+1] && P[i] >= P[i-1]) || (P[i] < P[i-1] && P[i] >= P[i+1])
end

p ans