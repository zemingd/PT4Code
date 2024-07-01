N, K = gets.split.map(&:to_i)
A    = gets.split.map(&:to_i)

x = 0
b = 1 << 39
half = (N + 1) / 2
while b > 0
  if (x | b) <= K && A.count{|a| a & b > 0} < half 
    x += b   
  end
  b >>= 1
end
puts A.inject(0) {|tot, a| tot + (x ^ a)}