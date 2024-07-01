N = gets.strip.to_i
ws = gets.split.map(&:to_i)

min = 1000000000
0.upto(N-2) do |t|
  s1 = ws[0, t+1]
  s2 = ws[t+1, N]
  diff = (s1.inject(:+) - s2.inject(:+)).abs
  min = diff if diff < min
end
puts min
