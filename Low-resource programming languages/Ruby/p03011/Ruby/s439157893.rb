puts gets.split.map(&:to_i).sort.first(2).inject(:+)
