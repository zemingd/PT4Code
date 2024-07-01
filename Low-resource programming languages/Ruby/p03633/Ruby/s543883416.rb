N = gets.to_i
T = readlines.map(&:to_i)
p T.inject(1){|res, i| res.lcm(i)}