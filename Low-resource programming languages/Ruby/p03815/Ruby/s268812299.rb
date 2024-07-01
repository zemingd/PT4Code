x = gets.chomp.to_i
ans = (x/11) * 2
if x % 11 == 0 then
    puts ans
    exit
end
if x/11 > 0 then
    x %= 11
    x -= 6
    ans += 1
    if x > 0 then
        x -= 5
        ans += 1
    end
else
    x -= 6
    ans += 1
    if x > 0 then
        x -= 5
        ans += 1
    end
end
puts ans