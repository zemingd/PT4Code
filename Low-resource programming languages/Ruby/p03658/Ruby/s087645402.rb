n,k=gets.split.map(&:to_i)
array=gets.split.map(&:to_i).sort[0..k-1].inject(:+)
