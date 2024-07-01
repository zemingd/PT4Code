N, K = gets.split.map(&:to_i)
data = N.times.map{ gets.split.map(&:to_i) }.sort_by(&:first)

count = 0
puts data.drop_while {|(a,b)| (count += b) < K }.first.first