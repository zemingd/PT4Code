a = gets.to_i
b = gets.split.map(&:to_i)
h = Hash.new(0)
for i in 0..(a - 1) do
    h[b[i]] += 1
end
k = h.to_a
j = 0
for i in 0..(k.size() - 1) do
    if(k[i][1] > 1)
        j += 1
    end
end
puts j == 0 ? 'YES' : 'NO'
