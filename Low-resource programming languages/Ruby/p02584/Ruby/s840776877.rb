x, k, d = gets.split.map(&:to_i)
x = x.abs

if x >= k * d
    p x - k * d
else
    y, x = x.divmod(d)
    k -= y
    p k.odd? ? d - x : x
end