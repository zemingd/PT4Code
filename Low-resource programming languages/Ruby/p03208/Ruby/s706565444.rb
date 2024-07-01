n,k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort
ans = 10**10
(n-k+1).times do |i|
    ans = h[i+k-1]-h[i] if ans > h[i+k-1]-h[i]
end
puts ans