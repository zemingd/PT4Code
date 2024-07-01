N = gets.to_i
X = gets.to_i(2)

popcount = {}
1.upto(N) do |i|
    n = X ^ (1<<(N-i))
    c = 0
    while n!=0
        n %= popcount[n] ||= n.to_s(2).count('1')
        c += 1
    end
    p c
end