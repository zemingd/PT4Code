n,a,b = gets.split.map(&:to_i)

d = b - a

if d.even?
    p d/2
else
    p [n-b, a-1].min + 1 + (b-a-1)/2
end