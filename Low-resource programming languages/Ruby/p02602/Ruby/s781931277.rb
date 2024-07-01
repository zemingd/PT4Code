N,K = gets.split.map &:to_i
A = gets.split.map &:to_i

(N-K).times do |i|
    puts (A[K+i] > A[i]) ? "Yes" : "No"
end