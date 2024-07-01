N = gets.to_i
hs = gets.split.map(&:to_i)
max = hs.shift
ans = 1
hs.each do |h|
  if h >= max
    max = h
    ans += 1
  end
end

puts ans