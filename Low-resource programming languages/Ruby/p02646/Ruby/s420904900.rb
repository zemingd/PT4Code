a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

cond = (a-b).abs <= (v - w)*t
puts cond ? 'YES' : 'NO'
