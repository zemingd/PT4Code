(N, M), As = readlines.map{|l| l.split.map(&:to_i)}

x = As.map{|a| a/2}.inject(&:lcm)
puts (M/x - 1)/2 + 1