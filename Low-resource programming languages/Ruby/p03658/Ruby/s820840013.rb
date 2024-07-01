k=gets[-3..-2].to_i
p gets.split.map(&:to_i).sort.reverse[0,k].inject :+