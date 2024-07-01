a, b, c = ARGF.gets.split.map(&:to_i)
num = 0
(a..b).map{ |i| num += 1; c & i }
puts num