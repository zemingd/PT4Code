def printAry(a)
    printf("#{a[0]}")
    for i in 1..a.length-1 do
        printf(" #{a[i]}")
    end
    printf("\n")
end


### main ###
n = STDIN.gets.to_s.to_i

a = STDIN.gets.to_s.split(" ")
a.map!(&:to_i)

flag = true
counter = 0

while flag do
    flag = false
    for i in 1..n - 1 do
        if a[i] < a[i-1] then
            buf = a[i-1]
            a[i-1] = a[i]
            a[i] = buf
            flag = true
            counter = counter + 1
        end
    end
end

printAry(a)
puts counter