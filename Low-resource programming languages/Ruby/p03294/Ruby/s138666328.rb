_ = gets
puts gets.chomp.split.map {|i| i.to_i - 1 }.inject(:+)