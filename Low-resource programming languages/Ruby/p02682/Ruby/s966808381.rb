A, B, C, K = gets.split.map &:to_i
remain = K
ans = 0
ans += [remain, A].min
remain -= A
if remain > 0
    remain -= B
    if remain > 0
        ans -= [remain, C].min
    end
end
p ans