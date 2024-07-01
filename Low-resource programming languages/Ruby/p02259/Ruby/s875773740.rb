n = gets.to_i
array = gets.split(" ").map(&:to_i)

def buble(array, n)
    i = 0
    x = 0
    while i < n
        k = array.count-1

        while i < k
            if array[k-1] > array[k] 
                w = array[k]
                array[k] = array[k-1]
                array[k-1] = w
                x += 1
            end
            k -= 1
        
        end
        i += 1
        
    end
    return x
end

ct = buble(array,n)
puts array.join(" ")
puts ct
