N,M = gets.split.map &:to_i
A = Array.new(M){gets.to_i}
MOD = 10 ** 9 + 7

S = Array.new(N+2, 0)
S[0] = 1

M.times do |i|
  S[A[i]] = nil
end

0.upto(N-1) do |i|
  1.upto(2) do |j|
    if S[i] && S[i+j]
      S[i+j] += S[i]
      S[i+j] %= MOD
    end
  end
end

p S[N]