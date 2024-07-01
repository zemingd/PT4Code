n,k=gets.split.map(&:to_i)
puts gets.split.map(&:to_i).sort[0..k-1].inject(:+)
