N,M = gets.split.map(&:to_i)
puts readlines.map {|s| s.split.map(&:to_i)[1..-1] }.inject(:&).size
