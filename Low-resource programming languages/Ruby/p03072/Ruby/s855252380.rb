N = gets.to_i
mts = gets.split.map(&:to_i)
ans = 1
(N-1).times do |i|
  ng = 0
  (i + 1).times do |j|
    if mts[j] > mts[i + 1]
      ng += 1
    end
  end
  ans += 1 if ng == 0
end
puts ans