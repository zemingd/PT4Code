p gets.split.map(&:to_i).sort.each_cons(2).map { |a, b| b - a }.reduce(:+)
