a,b = gets.chomp.split(" ").map(&:to_i)
ans = a - 1
if a <= b
    ans += 1
end
print(ans)