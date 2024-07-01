a, v =gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

distance = (a - b).abs
speed_minus = v - w

puts (speed_minus * t) >= distance ? 'YES' : 'NO'
