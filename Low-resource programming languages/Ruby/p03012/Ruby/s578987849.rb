def min(a,b) a<b ? a:b end
N=gets.to_i
W=gets.split.map(&:to_i)

sum = W.inject(:+)
ans = sum
N.times do |i|
    sum -= 2 * W[i]
    if ans > sum.abs
        ans = sum.abs
    end
end

p ans
