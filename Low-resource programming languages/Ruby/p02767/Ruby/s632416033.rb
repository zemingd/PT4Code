# https://atcoder.jp/contests/abc156/tasks/abc156_c



N = gets.to_i
Xs = gets.split.map(&:to_i)

p1 = Xs.inject(:+) / N
p2 = p1 + 1

sum1 = 0
sum2 = 0
Xs.each do |x|
  sum1 += (x - p1) ** 2
  sum2 += (x - p2) ** 2
end
puts sum1 < sum2 ? sum1 : sum2
