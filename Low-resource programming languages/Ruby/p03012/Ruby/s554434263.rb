N = gets.to_i
W = gets.split.map(&:to_i)
wn = W.inject(:+)
wl = 0
ans = wn
1.step(N-1) do |t|
  wl += W[t-1]
  ans = [ans, (wl - (wn - wl)).abs].min
end
puts ans