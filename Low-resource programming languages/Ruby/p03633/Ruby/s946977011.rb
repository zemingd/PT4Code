N = gets.to_i
T = readlines.map(&:to_i)
puts T.inject {|r,t| r.lcm(t) }