n = gets.to_i
a = gets.split.map(&:to_i)
puts a.each.with_index(1).sort_by {|e| e[0]}.map {|e| e[1]}.join(' ')
