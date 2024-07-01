N,M,C = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)
As = []

ans = 0
N.times do
  a = gets.split.map(&:to_i)
  tmp = C
  M.times do |i|
    tmp += (a[i] * Bs[i])
  end

  ans += 1 if tmp > 0
end

puts ans