N = gets.to_i
S = gets.chomp

tbl1 = Array.new(26, 0)
tbl2 = Array.new(26, 0)

N.times do |i|
  c = S[i].ord - 'a'.ord
  tbl2[c] += 1
end

ans = 0
N.times do |i|
  c = S[i].ord - 'a'.ord
  tbl1[c] += 1
  tbl2[c] -= 1
  cnt = 26.times.count { |j| tbl1[j].positive? && tbl2[j].positive? }
  ans = [ans, cnt].max
end

puts ans
