N,K = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)
a = Array.new(N, Float::INFINITY)
a[0] = 0

(1...K).each do |i|
  (1..i).each do |j|
    x = a[i-j] + (h[i]-h[i-j]).abs
    a[i] = x if x < a[i]
  end
end

(K...N).each do |i|
  (1..K).each do |j|
    x = a[i-j] + (h[i]-h[i-j]).abs
    a[i] = x if x < a[i]
  end
end

print a[N-1]