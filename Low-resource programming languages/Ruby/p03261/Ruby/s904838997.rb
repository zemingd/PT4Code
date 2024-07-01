
N = gets.to_i
W = N.times.map{gets.chomp}
ans = true
for i in 1..N-1
    if W[i-1][-1] != W[i][0]
        ans = false
        break
    end
end
puts (ans && N == W.uniq.size) ? "Yes" : "No"