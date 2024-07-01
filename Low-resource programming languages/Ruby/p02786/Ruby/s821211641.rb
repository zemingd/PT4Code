h = gets.to_i
ans = 1
k = 1
while h > 1
    k *= 2
    ans += k
    h /= 2
end
puts ans