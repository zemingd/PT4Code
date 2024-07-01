a, b, c = gets.split.map(&:to_i)
p (a..b).count {|d| c%d ==0}

