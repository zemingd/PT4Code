N = gets.to_i
h = []
h = gets.split.map(&:to_i)

ans = 0
(N-1).times do |i|
  if h[i] >= h[i+1]
    ans += 1
  else
    ans = 0
  end
end