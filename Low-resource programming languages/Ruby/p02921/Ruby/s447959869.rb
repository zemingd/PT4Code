S, T = readlines.map(&:chomp)

puts S.split('').zip(T.split('')).count{|s, t| s == t}