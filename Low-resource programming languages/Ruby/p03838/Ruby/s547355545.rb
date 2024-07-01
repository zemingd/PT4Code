x, y = gets.split.map(&:to_i)
ans = 0
if x > y
    ans += 1
    x = -x
end
ans += [(y-x).abs, (-y-x).abs + 1].min
p ans