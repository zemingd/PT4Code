n = gets.to_i
as = gets.split.map(&:to_i)

ret = as.map.with_index {|a,i| [a,i]}.sort_by{|a,i|a}.map{|a,i|i+1}

puts ret.join(' ')
