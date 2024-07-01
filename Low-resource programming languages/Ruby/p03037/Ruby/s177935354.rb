N,M = gets.split.map(&:to_i)
cards = Array.new(N,0)
M.times do
  l, r = gets.split.map(&:to_i)
  l -= 1
  r -= 1
  (l..r).each do |i|
    cards[i] += 1
  end
end

ans = 0
cards.each do |x|
  ans += 1 if x == M
end

puts ans