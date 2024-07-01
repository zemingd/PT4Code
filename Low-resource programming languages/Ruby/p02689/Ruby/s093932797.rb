N, M = gets.chomp.split(" ").map(&:to_i)
H = gets.chomp.split(" ").map(&:to_i)

P = {}
M.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  P[a] = [] if P[a] == nil
  P[a] << b
  P[b] = [] if P[b] == nil
  P[b] << a
end

cnt = 0
N.times do |i|
  path = P[i + 1]
  cnt += 1 if path == nil || path.all? {|n| n < H[i]}
end

puts cnt