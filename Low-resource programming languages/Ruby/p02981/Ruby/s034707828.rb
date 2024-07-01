# Your code here!

a = gets.split.map(&:to_i)
# p a[0] * a[1]
# p a[2]
if a[0] * a[1] > a[2]
    p a[2]
else
    p a[0] * a[1]
end