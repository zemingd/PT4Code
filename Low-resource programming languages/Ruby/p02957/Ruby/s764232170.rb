# https://atcoder.jp/contests/abc135/tasks/abc135_a

A, B = gets.split.map(&:to_i)

a, b = [A, B].sort
c = b - a
if c.odd?
  puts 'IMPOSSIBLE'
else
  puts a + c / 2
end
