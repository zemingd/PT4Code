arr = gets.chomp!.split(" ")
n = arr[0].to_i
k = arr[1].to_i
#puts "n = #{n}\nk = #{k}"
arr = []
(n-1).times do|i|
    arr[i] = gets.chomp!.to_i
    puts "arr[#{i}] = #{arr[i]}"
end
arr[n-1] = gets.to_i

arr.sort!
pp arr
min = 0
max = k-1

mindiff = arr[max] - arr[min]
while max < n do
    diff = arr[max]-arr[min]
    if mindiff > diff then mindiff = diff end
    max += 1
    min += 1
end

puts mindiff
