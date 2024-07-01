input = gets
a, b, c = input.split(' ').map(&:to_i)
ans = c - (a - b)
puts ans < 0 ? 0 : ans
