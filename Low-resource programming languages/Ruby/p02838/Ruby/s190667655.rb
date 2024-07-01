N = gets.to_i
As = gets.split.map(&:to_i)
M = 10**9 + 7

bs = (0 .. 60).map{|i| As.count{|a| a[i] == 1}}
puts (0 .. 60).inject(0){|s, i| (s + ((bs[i] * (N - bs[i])) << i)) % M}