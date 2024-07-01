a,b=gets.split.map(&:to_i)
p gets.split(" ").map(&:to_i).sort[-b..-1].inject:+