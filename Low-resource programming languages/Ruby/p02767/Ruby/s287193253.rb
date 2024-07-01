n = gets.to_i
x = gets.split.map(&:to_i)
pmax = x.max

dist = Hash.new(0)
1.upto(pmax) do |p|
  sum = x.inject(0) do |r, a|
    r + ((a - p).abs**2)
  end
  dist[p] = sum
end

puts dist.values.min