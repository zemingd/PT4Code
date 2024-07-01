N, C = gets.split.map(&:to_i)

memos = Array.new(C, Array.new(10**5+1, 0))
N.times do
  s, t, c = gets.split.map(&:to_i)
  memos[c-1][s-1] += 1
  memos[c-1][t] -= 1
end

sums = Array.new(10**5+2, 0)
(0..10**5).each do |i|
  C.times do |j|
    sums[i+1] = sums[i] + memos[j][i]
  end
end

puts sums.max
