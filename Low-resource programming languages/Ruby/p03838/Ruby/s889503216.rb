x, y = gets.split.map(&:to_i)
ans = 10000000000
if x <= y
    ans = [y - x, ans].min
end
x = -x
if x <= y
    ans = [y - x + 1, ans].min
elsif x <= y.abs
    ans = [y.abs - x + 2, ans].min
end
p ans