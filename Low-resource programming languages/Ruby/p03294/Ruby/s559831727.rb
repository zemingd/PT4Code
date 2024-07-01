gets
puts gets.chomp.split(" ").map(&:to_i).map{|i| i-1}.inject{|sum, n| sum + n}