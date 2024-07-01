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

def msort(a)
    l = a.size
    if l <= 1 then
        return a
    end
    al = msort(a[0..((l-1)/2)])
    ar = msort(a[((l+1)/2)..(l-1)])
    i = 0
    while i < l do
        if al[0] < ar[0] then
            a[i] = al.shift
        else
            a[i] = ar.shift
        end
        i += 1
        if al.size == 0 then
            while i < l do
                a[i] = ar.shift
                i += 1
            end
        elsif ar.length == 0
            while i < l do
                a[i] = al.shift
                i += 1
            end
        end
    end
    return a
end

def main(median, x)
    sortArray = msort(x)
    x.each do |i|
        dummy = sortArray.dup
        dummy.delete_at(binarySearchIndex(sortArray, i))
        puts dummy[median]
    end 
end

median = (gets.chomp.to_i) / 2 - 1
x = gets.chomp.split(" ").map(&:to_i)
main(median, x)