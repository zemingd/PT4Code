N,M=gets.split.map(&:to_i)
hs=gets.split.map(&:to_i)
hs.unshift(0)

arr = [1] * (N+1)

M.times do
    a,b=gets.split.map(&:to_i)
    if hs[a] == hs[b]
        arr[a] = 0
        arr[b] = 0
    elsif hs[a]<hs[b]
        arr[a] = 0
    else
        arr[b] = 0
    end
end

arr.shift
# p arr
puts arr.sum
