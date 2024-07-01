k = gets.split[1].to_i
p gets.split.map(&:to_i).sort[-k, k].inject :+