X, K, D = gets.split.map(&:to_i)
x = X.abs
if D * K <= x
    puts x - (D * K)
    exit
end
k = K - x / D
x -= (x / D) * D
if k.even?
    puts x
else
    puts (x - D).abs
end
