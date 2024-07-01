x, y = gets.split.map(&:to_i)
ans = 0
if x > y
    ans += 1 if x != 0
    x = -x
    if x > 0
        ans += -y - x + 1
    else
        ans += y - x
    end
else
    ans = [y - x, y + x + 1].min
end
p ans  