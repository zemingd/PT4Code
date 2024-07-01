n = gets.chomp.to_i
p gets.chomp.split.map(&:to_i).map.with_index{|a, i| [a, i]}.sort{|a, b| a[0] <=> b[0]}.map{|ab| ab[1] + 1}.flatten

