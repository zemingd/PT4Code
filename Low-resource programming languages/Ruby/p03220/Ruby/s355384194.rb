n = gets.to_i
t, a = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)

puts heights.map.with_index{ |h, i| [i + 1, (t - h * 0.006 - a).abs] }
                .sort_by{ |i, t| t }[0][0]