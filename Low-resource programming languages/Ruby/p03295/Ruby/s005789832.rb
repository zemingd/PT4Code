n,m = gets.split(" ").map(&:to_i)
count = 0
min = 9999999
max = 0
arr=Array.new

for i in 0 .. m-1 do
    a = gets.split(" ").map(&:to_i)
    arr[i] = a
end

for j in 0 .. m-1 do
    if arr[j][0] < min || arr[j][1] > max 
        if arr[j][0] < min 
            min = arr[j][0]
        end
        if arr[j][1] > max
        max = arr[j][1]
        end
        count += 1
    end

end



puts count