gets
a = gets.split.map{|a|a.to_i}
puts a.map.with_index{|a,i|[a,i]}.sort_by{|a|a[0]}.map{|a|a[1] + 1}.join(' ')
