a = gets.split.map(&:to_i)
# p a
if a[0] + a[1] >= (a[0] * a[1] && a[0] - a[1])
    p a[0] + a[1]
elsif a[0] - a[1] >= (a[0] * a[1] && a[0] + a[1])
    p a[0] - a[1]
else
    p a[0] * a[1]
end