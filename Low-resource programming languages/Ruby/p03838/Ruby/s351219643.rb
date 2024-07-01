x,y=gets.split.map(&:to_i)
ans = 0
if x > y
    x = -x
    ans += 1
end
ans += [(x-y).abs, (-x-y).abs + 1].min
p ans