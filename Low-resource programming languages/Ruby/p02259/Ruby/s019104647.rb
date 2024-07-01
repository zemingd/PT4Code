def bubbleSort(arr, n)
    flag = 1 
    cnt = 0
    
    while flag == 1
        flag = 0
        j = n - 1
        while j > 0
            if arr[j] < arr[j-1]
                v = arr[j-1]
                arr[j-1] = arr[j]
                arr[j] = v
                flag = 1
                cnt += 1
            end
            j -= 1
        end
    end 
    return arr, cnt
end

n = ARGF.gets.to_i
arr = ARGF.gets.split
arr = arr.map{|i| i.to_i} 
arr, c = bubbleSort(arr,n)

print arr.shift.to_s
arr.each{|i| print " " + i.to_s}
print "\n"
puts c

