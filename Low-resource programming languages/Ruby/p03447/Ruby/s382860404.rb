a, b, c = readlines.map(&:to_i)
m = (a - b)
while m > c 
    m -= c
end
puts m == c ? m - c : m