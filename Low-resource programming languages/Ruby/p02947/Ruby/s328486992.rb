n = gets.chomp.to_i
ana = []
n.times{|i| ana << gets.chomp.chars.sort(&:casecmp).join }
dbl = ana.group_by(&:itself).select{|k, v| v.size > 1 }.map(&:first)
idx = [0]
dbl.each{|d| idx << ana.map.with_index{|e,i| e == d ? i : nil}.compact.combination(2).to_a.count }
puts idx.inject(&:+)