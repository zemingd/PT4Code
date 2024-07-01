# https://atcoder.jp/contests/abc129/tasks/abc129_b



N = gets.to_i
Ws = gets.split.map(&:to_i)

total_w = Ws.inject(:+)

s1 = 0
ans = total_w
Ws.each do |w|
  s1 += w
  s2 = total_w - s1
  ans = (s1 - s2).abs if (s1 - s2).abs < ans
end
puts ans
