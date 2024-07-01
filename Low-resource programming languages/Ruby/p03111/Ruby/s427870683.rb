# https://atcoder.jp/contests/abc119/tasks/abc119_c

N, A, B, C = gets.split.map(&:to_i)
ls = Array.new(N) { gets.to_i }

ans = 10000

(4**N).times do |s|
  vss = Array.new(3) { Array.new }
  N.times do |i|
    s, r = s.divmod(4)
    vss[r] << ls[i] if r < 3
  end
  next if vss.any? { |vs| vs.empty? }
  mp = [A, B, C].zip(vss).reduce(0) do |memo, (x, vs)|
    memo + (vs.size - 1) * 10 + (x - vs.reduce(&:+)).abs
  end
  ans = [ans, mp].min
end

puts ans
