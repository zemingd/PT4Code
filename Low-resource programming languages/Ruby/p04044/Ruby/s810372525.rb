# input
N, L = gets.split.map{|x| x.to_i}
S = N.times.map{gets.chomp}

# compute
S_sorted = S.sort

ans = S_sorted[0]
for i in 1..N-1
    ans = ans + S_sorted[i]
end

# output
puts ans

