n=gets.to_i
puts gets.split.map{|m| m.to_i-1}.inject(:+)