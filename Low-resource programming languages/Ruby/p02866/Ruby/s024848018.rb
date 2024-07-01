N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)
MOD = 998244353

C = Array.new(N, 0)
D.each{|i|
  C[i] += 1
}
ans, cnt = [1, 0]
C.each_with_index{|c, i|
  (ans = 0; break) if i == 0 && (c != 1 || D[0] != 0)
  cnt += c
  next if c == 1 && i == 0
  break if c == 0
  ans = (ans * C[i-1]**C[i]) % MOD
}

puts cnt == N ? ans : 0
