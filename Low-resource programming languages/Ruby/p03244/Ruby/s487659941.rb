N = gets.to_i
Vs = gets.split.map(&:to_i)

as, bs = Hash.new(0), Hash.new(0)
Vs.each_slice(2) do |a, b|
  as[a] += 1
  bs[b] += 1
end
a1, a2 = as.sort_by(&:last).reverse.take(2).map(&:first)
b1, b2 = bs.sort_by(&:last).reverse.take(2).map(&:first)
puts a1 != b1 ? N - as[a1] - bs[b1] : [N - as[a1] - bs[b2], N - as[a2] - bs[b1]].min