# AtCoder Beginner Contest 164
# B - Battle
# https://atcoder.jp/contests/abc164/tasks/abc164_b
(a, b, c, d) = gets.chomp.split.map(&:to_i)

turn = 0

while true
  break if a <=0 || c <= 0
  if turn % 2 == 0
    c -= b
  else
    a -= d
  end
  turn += 1
end

puts a > 0 ? 'Yes' : 'No'
