def bisect_left(a, x)
    lo = 0
    hi = a.size
    while lo < hi do
        mid = (lo + hi) / 2
        if a[mid] < x then
            lo = mid + 1
        else
            hi = mid
        end
    end
    return lo
end


N = gets.to_i
L = gets.strip.split.map(&:to_i)

L.sort!
result = 0
(0..N - 3).each do |i|
    (i + 1..N - 2).each do |j|
        result += bisect_left(L, L[i] + L[j]) - j - 1
    end
end
puts result
