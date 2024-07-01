N, K = gets.chomp.split(" ").map(&:to_i);
S = gets.chomp

ret = S[K - 1].downcase

if K - 2 >= 0
  ret = S[0..(K - 2)] + ret
end

if K <= N
  ret = ret + S[K..N]
end

print ret