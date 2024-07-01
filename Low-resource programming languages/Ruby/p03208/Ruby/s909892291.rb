n, k = gets.split.map(&:to_i)
hs = n.times.map { gets.to_i }.sort!

ans = (10 ** 9) - 1
(n - k + 1).times do |i|
  min, max = hs[i..(i + k - 1)].minmax
  ans = max - min if max - min <= ans
end

puts ans
