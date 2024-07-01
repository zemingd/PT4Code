# https://atcoder.jp/contests/abc133/tasks/abc133_b


N, D = gets.split.map(&:to_i)
Xss = Array.new(N) { gets.split.map(&:to_i) }

d2s = Xss.combination(2).map do |xs1, xs2|
  xs1.zip(xs2).reduce(0) { |memo, (y, z)| memo + (y - z) ** 2 }
end

ans = d2s.count do |d2|
  d = Math.sqrt(d2).floor
  d ** 2 == d2
end

puts ans
