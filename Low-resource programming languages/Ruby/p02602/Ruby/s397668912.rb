N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

last = A[0,K].inject(:*)
(N-K).times do |i|
  n = last / A[i] * A[K+i]
  puts last < n ? "Yes" : "No"
  last = n
end