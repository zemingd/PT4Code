N, K = gets.split.map{|i| i.to_i}
A = gets.split.map{|i| i.to_i}

count = Array.new(40, 0)
binary = Array.new(41)
k = Array.new(40)
ans = Array.new(40)

max = 0
binary[0] = 1
for i in 0..39
    binary[i + 1] = binary[i] * 2
    k[i] = K % binary[i + 1] / binary[i]

    A.each do |a|
        count[i] += a % binary[i + 1] / binary[i]
    end

    if i > Math.log2(K)
        ans[i] = 0
    else
        ans[i] = (count[i] > N / 2) ? 0 : 1
    end

    max += (N * ans[i] - count[i]).abs * binary[i]
end

for i in 0..39
    if k[39 - i] == ans[39 - i]
        next
    end

    if k[39 - i] == 1
        break
    end

    max += binary[39 - i] * (2 * count[39 - i] - N)
end

puts max