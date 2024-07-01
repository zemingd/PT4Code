gets
puts gets.split.map(&:to_i).combination(2).map{|a, b| a * b}.inject(:+)
