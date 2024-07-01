# https://atcoder.jp/contests/abc158/tasks/abc158_c


A, B = gets.split.map(&:to_i)

r08 = 0.08
r10 = 0.10

min_x = (A / r08).ceil
max_x = ((A + 1) / r08).ceil
(min_x...max_x).each do |x|
  if (x * r10).truncate == B
    puts x
    exit
  end
end
puts '-1'
