# https://atcoder.jp/contests/abc118/tasks/abc118_b


N, M = gets.split.map(&:to_i)
Ks = Array.new(N)
Ass = Array.new(N)
N.times do |i|
  Ks[i], *Ass[i] = gets.split.map(&:to_i)
end

ans = Ass.flatten.group_by(&:itself).count { |k, vs| vs.count == N }

puts ans
