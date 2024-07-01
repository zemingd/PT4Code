n = gets.to_i

x = gets.split.map(&:to_i)

ans = 1000000000
for i in 0..100 do
    res = 0;
    for a in x do
        res+=(a-i)*(a-i)
    end
    ans = res if ans>res
end
puts ans