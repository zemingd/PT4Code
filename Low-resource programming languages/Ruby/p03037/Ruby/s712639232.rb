N, M = gets.strip.split.map(&:to_i)

ls = []
rs = []
M.times { |i| ls[i], rs[i] = gets.strip.split.map(&:to_i) }
puts rs.min - ls.max + 1
