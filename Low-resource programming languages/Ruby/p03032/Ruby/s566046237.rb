N,K = gets.split.map(&:to_i)
val = gets.split.map(&:to_i)
T = [K, N].min
res = 0

(T+1).times do |left|
  (0..(T-left)).each do |right|
    a = val[0...left]+val[(N-right)...N]    
    a.sort!
    sum = a.inject(&:+) || 0
    [K-left-right, a.length].min.times do |i|
      break if a[i] >= 0
      sum -= a[i]
    end
    res = sum if sum > res
  end
end

puts res
