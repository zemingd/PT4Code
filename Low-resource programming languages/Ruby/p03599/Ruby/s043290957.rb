A, B, C, D, E, F = gets.split.map(&:to_i)
wt = 0.step(F, 100*A).flat_map{|a| 0.step(F - a, 100*B).map{|b| a + b}}.sort.uniq
sg = 0.step(F, C).flat_map{|c| 0.step(F - c, D).map{|d| c + d}}.sort.uniq
puts wt.product(sg).drop(1).select{|w, s| w + s <= F && 100*s <= w*E}.map{|w, s| [w + s, s]}.max_by{|a, s| 100*s / a}.join(' ')