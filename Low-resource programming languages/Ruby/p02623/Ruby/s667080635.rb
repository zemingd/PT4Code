n, m, k = gets.split.map(&:to_i)
a = [0] + gets.split.map(&:to_i)
b = [0] + gets.split.map(&:to_i)

n.times {|i| a[i+1] += a[i]}
m.times {|j| b[j+1] += b[j]}

ans = 0
j = m
(n+1).times do |i|
    break if a[i] > k
    j -= 1 while a[i] + b[j] > k && j > 0
    ans = [ans, i + j].max
end

p ans