N, M = gets.split.map(&:to_i)
min, max = 1, N
M.times {
  l, r = gets.split.map(&:to_i)
  min, max = [l, min].max, [max, r].min
}
p [max - min + 1, 0].max