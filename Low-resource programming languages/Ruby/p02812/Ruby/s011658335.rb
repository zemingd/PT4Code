# https://atcoder.jp/contests/abc150/tasks/abc150_b



N = gets.to_i
S = gets.chomp

ans = 0
S.chars.each_cons(3) do |a, b, c|
  ans += 1 if a + b + c == 'ABC'
end
puts ans
