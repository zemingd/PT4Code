n = gets.to_i
array = gets.split(" ").map{|k|k.to_i}
ans = 0
h = 0
until h == n
for i in (h+1..(n-1)).reverse_each do
    if array[i-1] > array[i]
        k = array[i]
        array[i] = array[i-1]
        array[i-1] = k
        ans += 1
    end
end
h += 1
end

puts array.join(" ")
puts ans
