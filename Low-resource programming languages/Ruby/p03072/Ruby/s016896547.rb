n = gets.to_i
h = gets.split.map(&:to_i)
ans = 0
h.each_with_index do |k, i|
    f = true
    0.upto(i) do |j|
        next if h[j] <= k
        f = false
    end
    ans += 1 if f
end
puts ans