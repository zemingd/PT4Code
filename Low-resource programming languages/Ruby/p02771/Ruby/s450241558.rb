n = gets.split.map(&:to_i)
puts n.uniq.size == 2 ? 'Yes':'No'