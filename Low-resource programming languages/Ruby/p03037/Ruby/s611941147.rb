N, M = gets.split.map &:to_i

min = 0
max = N
M.times do
  l, r = gets.split.map &:to_i
  min = l if min < l
  max = r if max > r
end

p max >= min ? max - min + 1 : 0