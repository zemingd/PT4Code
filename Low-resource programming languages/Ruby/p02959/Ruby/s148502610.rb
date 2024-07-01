n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = 0

(0..n-1).each do |i|
  b1 = [as[i], bs[i]].min
  bs[i] -= b1
  as[i] -= b1
  b2 = [bs[i], as[i+1]].min
  as[i+1] -= b2
  ans += b1 + b2
end

puts ans