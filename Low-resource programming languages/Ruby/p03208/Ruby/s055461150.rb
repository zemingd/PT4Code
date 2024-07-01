n,k=gets.split.map(&:to_i)
h=n.times.map{gets.to_i}.sort
m=1/0.0
(n-k+1).times do |i|
  d = h[i+k-1] - h[i]
  m = d if d < m
end
p m