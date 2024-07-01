n = gets.to_i
ans = 0
for i in 1..10
    [3,5,7].repeated_permutation(i) do |arr|
        ans += 1 if arr.join.to_i <= n && arr.include?(3) && arr.include?(5) && arr.include?(7)
    end
end
puts ans