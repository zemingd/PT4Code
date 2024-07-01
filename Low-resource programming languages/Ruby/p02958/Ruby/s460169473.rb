n = gets.chomp.to_i
p = gets.chomp.split(" ").map(&:to_i)
comp = [*(1..n)]
count = 0
ans = "YES"


for i in 0..n-1
    if comp[i] != p[i]
        count += 1
    end
    if count > 2
        ans = "NO"
        break
    end
end
puts ans
