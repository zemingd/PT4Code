N,K = gets.split.map(&:to_i)
h = N.times.map { gets.to_i }

h.sort!
min = 10000000000

(N-K...N).each do |i|
  m = (h[i]-h[i-N+K]).abs
  min = m if m < min
end

puts min