N,K = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
T = [K, N].min
res = 0

(T+1).times do |a|
  ((T-a)+1).times do |b|
    h = v[0,a]+v[(N-b),b]    
    h.sort!
    sum = h.inject(&:+) || 0
    [K-a-b, h.length].min.times do |i|
      break if h[i] >= 0
      sum -= h[i]
    end
    res = sum if sum > res
  end
end

puts res
