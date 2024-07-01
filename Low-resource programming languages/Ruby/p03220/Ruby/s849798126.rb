gets.to_i
T, A = gets.chomp.split(" ").map(&:to_f)
H = gets.chomp.split(" ").map(&:to_f)

ans = H.map.with_index{|h, i| [(T - h * 0.006 - A).abs, i + 1]}.min_by{|t, i| t}

puts ans[1]
