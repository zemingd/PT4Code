A, B = gets.split.map(&:to_i)

max = (A / 0.08).to_i
min = (B / 0.10).to_i

ans = -1
(min..max).to_a.each do |i|
  match_a = (i * 0.08).floor == A
  match_b = (i * 0.1).floor == B

  ans = [ans, i].max
end

puts ans
