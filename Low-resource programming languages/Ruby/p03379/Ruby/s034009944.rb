def isOk(arr, index, key)
    arr[index] >= key ? true : false
end

def binarySearchIndex(arr, key)
    left = -1
    right = arr.size
    while (right-left).abs > 1 do
        mid = (right + left) / 2
        if isOk(arr, mid, key) then
            right = mid
        else
            left = mid
        end
    end
    right
end

def main(median, x)
    sortArray = x.sort
    x.each do |i|
        dummy = sortArray.dup
        dummy.delete_at(binarySearchIndex(sortArray, i))
        puts dummy[median]
    end 
end

median = (gets.chomp.to_i) / 2 - 1
x = gets.chomp.split(" ").map(&:to_i)
main(median, x)