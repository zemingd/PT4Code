a, b, c = gets.split.map(&:to_i)
vs = [a, b, c].sort
puts vs[0] + vs[1] == vs[2] ? 'Yes' : 'No'
