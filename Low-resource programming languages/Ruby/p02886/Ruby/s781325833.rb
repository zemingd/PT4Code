N = gets.strip.to_i
S = gets.strip.split.map(&:to_i)

s = 0 
S.combination(2) { |a| s += a.first * a.last }
puts s
