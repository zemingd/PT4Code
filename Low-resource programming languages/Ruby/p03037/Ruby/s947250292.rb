N, M = gets.split.map(&:to_i)

ls = []
rs = []
M.times do
  l, r = gets.split.map(&:to_i)
  ls << l
  rs << r
end

s = rs.min - ls.max
if s >= 0
  puts s + 1
else
  puts 0
end