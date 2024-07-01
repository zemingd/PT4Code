n=gets.to_i
a=gets.split.map(&:to_i)
puts a.map.with_index{|ai, i| [ai, i]}.sort_by{|(ai, i)| ai}.map{|(ai, i)| i + 1} * ' '
