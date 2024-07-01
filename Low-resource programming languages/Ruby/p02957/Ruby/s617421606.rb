a = gets.split.map(&:to_i)
# p a
if a[0] % 2 != a[1] % 2
    p "IMPOSSIBLE"
else
    p (a[0] + a[1]) / 2
end