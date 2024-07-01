str = gets.split
N,L = str[0].to_i, str[1].to_i
min = L.abs
a = L
sum = 0
for x in 0...N do
    sum += L + x
    if min > (L+x).abs
        a = (L+x)
        min = a.abs
    end
end
puts sum - a