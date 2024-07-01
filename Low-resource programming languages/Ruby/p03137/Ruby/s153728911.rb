N, M = gets.split(" ").map(&:to_i)
X = gets.split(" ").map(&:to_i).sort
d = []
(M - 1).times do |i|
    d[i] = X[i + 1] - X[i]
end

d = d.sort

if N >= M 
    puts 0
else 
    puts d[0..(M - N - 1)].inject(:+)
end