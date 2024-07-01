gets
puts gets.split.map(&:to_i).each.with_index.to_a.sort{|l,r|l[0]<=>r[0]}.map{|a,i|i+1}*" "