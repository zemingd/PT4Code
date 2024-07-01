a, b, c, d = STDIN.gets.split(' ').map(&:to_i)

start = a < c ? c : a
finish = b < d ? b : d

ans = finish - start < 0 ? 0 : finish - start
puts ans