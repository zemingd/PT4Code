array = Array.new

while val = gets do
    array.push(val.chomp.split.map(&:to_i))
end

k = array[0][1]
h = array[1].sort.reverse

if k >= h.length
    puts(0)
    exit
else
    h.shift(k)
    puts(h.sum)
end