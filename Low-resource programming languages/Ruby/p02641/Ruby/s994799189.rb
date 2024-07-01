X, N = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

if P.index(X).nil?
    puts X
    exit
end

diff = 1
ans = -1
while true do
    if P.index(X-diff).nil?
        ans = X-diff
        break
    end
    if P.index(X+diff).nil?
        ans = X+diff
        break
    end
    diff += 1
end
puts ans