A, B, C = gets.split.map(&:to_i)
ans = [C - (A-B),0].max
puts ans
