N = gets.to_i

arr = gets.split(" ")
arr = arr.map { |a|
    a.to_i
}

arr_count = []
num = 0 
move_count = 0
while num < arr.length do
    while num + move_count < arr.length - 1 do
        if arr[num+move_count] >= arr[num + move_count + 1]
            move_count += 1
        else
            break 
        end
    end
    arr_count.push(move_count)
    move_count = 0
    num += 1 
end
puts(arr_count.max)