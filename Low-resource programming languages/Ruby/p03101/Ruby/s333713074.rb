puts 2.times.map{|i| gets.split.map(&:to_i)}.transpose.map{|l, s| l - s }.inject(:*)
