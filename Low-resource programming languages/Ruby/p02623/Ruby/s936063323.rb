line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ').map(&:to_i)
    i += 1
end

N,M,K = line[0]
A = line[1]
B = line[2]

C = A + B
$index = 0
$K = K

def culc (arr)
    if arr.length == 0
         p $index
         return
    end
    if  $K >= arr.min
        i = arr.index(arr.min)
        arr.delete_at(i)
        $index += 1
        culc(arr)
    else
        p $index
        return
    end
end

culc(C)