n = gets.to_i
puts gets.split.map(&:to_i).sort_by.with_index{|v,i| (n.even? ^ i.even?) ? -i : i }.join(' ')
