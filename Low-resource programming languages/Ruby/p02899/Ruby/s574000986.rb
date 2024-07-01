gets
puts gets.split.map(&:to_i).each.with_index.sort{|l,r|l[0]<=>r[0]}.map{|a,i|i+1}*" "