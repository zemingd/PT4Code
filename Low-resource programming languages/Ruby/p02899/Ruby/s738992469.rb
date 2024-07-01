n = gets.to_i
a_arr = gets.split.map(&:to_i)
puts a_arr.map.with_index(1){|a, ix| [a, ix]}.sort_by{|a, ix| a}.map{|a, ix| ix}.join(' ')