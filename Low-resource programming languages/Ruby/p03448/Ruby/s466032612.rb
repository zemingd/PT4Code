# https://atcoder.jp/contests/abc087/tasks/abc087_b



A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

ans = 0
yen500 = [X / 500, A].min
0.upto(yen500) do |a|
  yen100 = [(X - 500 * a) / 100, B].min
  0.upto(yen100) do |b|
    ans += 1 if 500 * a + 100 * b + 50 * C >= X
  end
end

puts ans
