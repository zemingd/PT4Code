n = gets.to_i
divs = Array.new(n+1, 0)
ans = 0
for i in 1..n
    i.step(n, i) do |j|
        divs[j] += 1
    end
    ans += 1 if divs[i] == 8 and i % 2 == 1
end
puts ans
