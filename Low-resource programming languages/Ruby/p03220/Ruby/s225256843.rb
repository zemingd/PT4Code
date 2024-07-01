n = STDIN.gets.to_i
t, a = STDIN.gets.split(" ").map(&:to_i)
hs = STDIN.gets.split(" ").map(&:to_i)

ni = 0
nd = 10000
for i in 0...n
  ti = t - hs[i] * 0.006
  diff = (ti - a).abs

  if diff < nd
    ni = i
    nd = diff
  end
end

puts (ni+1)
