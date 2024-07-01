S=gets.chomp.chars.map(&:to_i).each.with_index
p([S.map{|x,i| x.odd? == i.odd? ? 1 : 0}.inject(:+), S.map{|x,i| x.odd? != i.odd? ? 1 : 0}.inject(:+)].min)