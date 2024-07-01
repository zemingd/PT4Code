a, b, c, d = gets.split.map(&:to_i)
puts [0, ([b, d].min - [a, c].max)].max