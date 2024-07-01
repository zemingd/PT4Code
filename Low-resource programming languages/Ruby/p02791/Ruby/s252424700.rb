# https://atcoder.jp/contests/abc152/tasks/abc152_c



N = gets.to_i
Ps = gets.split.map(&:to_i)

ans = N
min = Ps.first
Ps.each do |pi|
  ans -= 1 if pi > min
  min = pi if pi < min
end
puts ans
