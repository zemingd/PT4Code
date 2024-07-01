a,b,c = gets().split().map(&:to_i)

if a > b then
    k = b
    b = a
    a = k
end
if b > c then
    k = c
    c = b
    b = k
end
if a > b then
    k = b
    b = a
    a = k
end

puts [a,b,c].join(" ")


