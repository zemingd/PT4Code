(N, M), As = readlines.map{|l| l.split.map(&:to_i)}

l = As.map{|a| a/2}.inject(&:lcm)
puts (M/l + 1)/2