n = gets.to_i
ts = []
5.times{ ts << gets.to_i }
p (n / ts.min.to_f).ceil + 4
