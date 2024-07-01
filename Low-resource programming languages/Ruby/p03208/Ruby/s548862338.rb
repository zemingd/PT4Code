n,k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort

ans = 10**9
(n-k+1).times do |i|
    d = h[i+k-1] - h[i]
    ans = d if ans > d
end

puts ans