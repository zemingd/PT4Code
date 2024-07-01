n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

count = 0
swap = true
while swap
    swap = false
    (n - 1).downto(1){|j|
        if arr[j - 1] > arr[j]
            arr[j - 1], arr[j] = arr[j], arr[j - 1]
            swap = true
            count += 1
        end
    }
end
puts arr.join(" ")
puts count