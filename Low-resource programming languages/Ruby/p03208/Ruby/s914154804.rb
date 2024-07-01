N, K = gets.split.map(&:to_i)
hs = N.times.map{gets.to_i}.sort

ans = 10**18
(N-K+1).times do |i|
    result = hs[i+K-1] - hs[i]
    ans = result if ans > result
end
puts ans