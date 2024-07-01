N=100000
memo = [0] * (N+1)
(1..N+1).each do |i|
  a = []
  7.times do |j|
    k = i - 6 ** j
    a << memo[k] if k >= 0
    k = i - 9 ** j
    a << memo[k] if k >= 0
  end
  memo[i] = a.min + 1
end
p memo[gets.to_i]
