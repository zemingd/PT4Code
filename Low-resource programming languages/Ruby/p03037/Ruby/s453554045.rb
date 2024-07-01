N, M = gets.chomp.split.map(&:to_i)
L = []
R = []
M.times do |i|
  l, r = gets.chomp.split.map(&:to_i)
  L.push(l)
  R.push(r)
end
p((R.min < L.max) ? 0 : R.min - L.max + 1)
