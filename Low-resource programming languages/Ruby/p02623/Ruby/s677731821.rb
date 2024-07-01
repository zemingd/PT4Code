N,M,K=gets.split.map(&:to_i)

as = gets.split.map(&:to_i).reverse + gets.split.map(&:to_i)

l = 0
r = N
sum = as[0...r].inject(:+)

max = 0
while r < N+M
    if K < sum
        sum -= as[l]
        l += 1
    else
        sum += as[r]
        r += 1
    end

    if sum <= K
        len = r-l
        max = len if max < len
    end
end

puts max