n, k = gets.chomp.split.map(&:to_i)

ans = 0.0
n.times do |ii|
  i = ii + 1
  cnt = 0.0
  while i < k
    i = i * 2
    cnt += 1
  end
  ans += (1/2.0) ** cnt
end

puts ans / n.to_f
