n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
count = 0

while n > 1
    flg = 0
    for i in 1..n-1
        arr[i] > arr[i-1] && next
        if arr[i] < arr[i-1]
            arr[i],arr[i-1] = arr[i-1],arr[i]
            count += 1
            flg += 1
        end
    end
    flg == 0 && break
end

puts arr.join(" ")
puts count