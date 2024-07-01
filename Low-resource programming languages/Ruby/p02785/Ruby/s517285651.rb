array = Array.new

while val = gets do
    array.push(val.chomp.split.map(&:to_i))
end

n,k = array[0]
h = array[1].sort.reverse
sum = 0

if k >= n
    puts(0)
    exit
elsif k > 0
    h.shift(k)
end

h.each do |i| 
    sum = sum + i 
end
puts(sum)