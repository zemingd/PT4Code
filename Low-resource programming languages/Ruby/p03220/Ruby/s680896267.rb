n = gets.to_i
t, a = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i).map.with_index(1){|x,idx| [idx,(t - x * 0.006 - a).abs]}
p Hash[*ary.flatten].min_by(&:last).min