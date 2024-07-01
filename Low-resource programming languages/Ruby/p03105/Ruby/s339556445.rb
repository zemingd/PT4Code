a, b, c = STDIN.read.split.map(&:to_i)

out = [c, b / a].min

puts out
