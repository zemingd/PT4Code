N, M, K = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

aa = [0]
bb = [0]
N.times do |i|
    aa << a[i] + aa.last
end
M.times do |i|
    bb << b[i] + bb.last
end

ans, j = 0, M
(N + 1).times do |i|
    break if aa[i] > K
    while bb[j] > K - aa[i]
        j -= 1
    end
    ans = i + j if i + j > ans
end

puts ans