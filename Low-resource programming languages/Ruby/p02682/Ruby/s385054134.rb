A, B, C, K = gets.split.map &:to_i

ans = 0
rest = K
rest -= ans += [A, rest].min
rest -= [B, rest].min
ans -= rest
p ans