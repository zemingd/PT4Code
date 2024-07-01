n = gets.to_i
puts gets.split.map.with_index(1){|v, i| [v.to_i, i]}.sort.map{|ai| ai[1]}.join(' ')
