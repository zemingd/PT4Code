def cost(target, ls)
  l = ls.reduce(:+)
  (ls.size-1)*10 + (target-l).abs
end

n, a, b, c = gets.split.map(&:to_i)
ls = n.times.map do
  gets.to_i
end

total_cost = (1..n-2).flat_map {|i| ls.combination(i).to_a}.map do |as|
  (1..n-as.size-1).flat_map {|j| (ls-as).combination(j).to_a}.map do |bs|
    (1..n-as.size-bs.size).flat_map {|k| (ls-as-bs).combination(k).to_a}.map do |cs|
  		cost(a, as) + cost(b, bs) + cost(c, cs)
    end
  end
end.flatten.min || 0

puts total_cost