N = gets.to_i
L = gets.split.map(&:to_i)

L.sort!.push(10**4)

count = 0
for i in 0...(N-2)
    for j in (i+1)...(N-1)
        lb = j
        rb = N
        k = L[i] + L[j]
        while rb - lb > 1
            mb = (lb+rb)/2
            L[mb] < k ? lb = mb : rb = mb
        end
        count += lb - j
    end
end

puts count