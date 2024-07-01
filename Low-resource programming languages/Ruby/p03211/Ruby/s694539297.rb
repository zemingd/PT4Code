array = gets.split("")
puts array.map.with_index{ |x,idx| array[idx..idx + 2].join.to_i }.map{|x| x - 753}.map(&:abs).min
