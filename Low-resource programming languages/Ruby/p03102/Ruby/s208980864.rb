n, m, c = gets.split.map(&:to_i)
bs = gets.split(nil, m).map(&:to_i)
results = n.times.map do
  as = gets.split(nil, m).map(&:to_i)
  (0..m-1).map {|i| as[i] * bs[i]}.inject(:+) + c > 0
end

puts results.count(true)
