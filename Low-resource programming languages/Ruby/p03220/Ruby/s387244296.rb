N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_f)
xTemp = []
ans = []
h0 = 0
for x in 0..N - 1
  xTemp[x] = T - H[x] * 0.006
  ans[x] = (xTemp[x] - A).abs
  if x > 0 && ans[x - 1] > ans[x]
    kai = x + 1
    h0 = 1
  end
end
puts 1 if h0 == 0
puts kai if h0 == 1