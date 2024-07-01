array = Array.new

while val = gets do
    array.push(val.chomp.split.map(&:to_i))
end

n,k = array[0]
h = array[1].sort.reverse

if k >= n
    puts(0)
elsif k == 0
    puts(h.sum)
else
    h.shift(k)
    sum = 0
    h.each do |i| 
        sum = sum + i 
    end
    puts(sum)
end