n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
flag = true
while flag == true
    flag = false
    for j in -(n-1)..-1
        if a[-j] < a[-j-1] then
            k = a[-j]
            a[-j] = a[-j-1]
            a[-j-1] = k
            flag = true
            cnt += 1
        end
    end
end
puts a.join(" ")
puts cnt
