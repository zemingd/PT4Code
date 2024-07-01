n,k=gets.split.map(&:to_i)
p gets.split.map(&:to_i).sort[-k..-1].inject(:+)