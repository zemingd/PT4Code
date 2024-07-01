n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i).reverse
ans = 0
res = 0
(1...n).each do |i|
    if h[i-1] > h[i] then
        ans = res if ans < res
        res = 0
    else
        res += 1
    end
end
puts ans