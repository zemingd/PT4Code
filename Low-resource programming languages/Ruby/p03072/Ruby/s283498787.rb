n = gets.to_i
hs = gets.split.map(&:to_i)

highest = 1
ans = 0

hs.each do |h|
  if h >= highest
    ans += 1
    highest = h
  end
end

puts ans
