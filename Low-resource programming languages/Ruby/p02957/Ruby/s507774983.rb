A, B = gets.split(' ').map(&:to_i)
n = (B - A).abs
puts n.even? ? [A, B].min + n/2 : 'IMPOSSIBLE'