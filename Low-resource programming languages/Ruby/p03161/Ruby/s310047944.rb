N,K = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)
a = [0]

(1...N).each do |i|
  jumps = (1..[i,K].min).map do |j|
    a[i-j] + (h[i]-h[i-j]).abs
    # one = a[i-1] + (h[i]-h[i-1]).abs
  end
  a[i] = jumps.min
end
print a[N-1]
