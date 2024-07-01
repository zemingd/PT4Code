a, b, c = gets.split.map(&:to_i)
arr = (a..b).select {|n| (c % n).zero?}
puts arr.length


