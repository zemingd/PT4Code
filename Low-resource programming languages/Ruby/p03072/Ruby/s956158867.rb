n = gets.to_i
h = gets.split(" ").map(&:to_i)
count = 1
(1...n).each do |i|
    if h[i] >= h[0] && h[i] >= h[i-1]
        count += 1
    end
end
print count