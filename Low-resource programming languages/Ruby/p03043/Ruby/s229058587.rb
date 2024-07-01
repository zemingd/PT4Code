N, K = gets.split.map(&:to_i)
sum = 0
for i in 1..N
    sum += 1.0 / N * (i < K ? 0.5 ** Math.log((K.to_f / i).ceil, 2).ceil : 1)
end
puts sum