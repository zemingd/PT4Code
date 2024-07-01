N,K = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)
a = Array.new(N)
a[0] = 0

(1...N).each do |i|
  to = i < K ? i : K
  (1..to).each do |j|
    x = a[i-j] + (h[i]-h[i-j]).abs
    if !a[i] or x < a[i]
      a[i] = x
    end
  end
end
print a[N-1]
