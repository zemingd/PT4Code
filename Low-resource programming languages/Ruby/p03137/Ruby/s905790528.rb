# https://atcoder.jp/contests/abc117/tasks/abc117_c


N, M = gets.split.map(&:to_i)
Xs = gets.split.map(&:to_i)

if N >= M
  puts "0"
  exit
end

Xs.sort!
D = Xs.last - Xs.first
ds = Xs.each_cons(2).map { |x1, x2| x2 - x1 }.sort.reverse

ans = D - (ds.take(N - 1).reduce(&:+) || 0)
puts ans
