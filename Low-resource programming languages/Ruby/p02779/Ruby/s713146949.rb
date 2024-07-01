def swap(len,t, l)
    tmp[0] = len[t]
    len[t] = len[l]
    len[l] = tmp[0]
    return len
end

n = gets.to_i
data = gets.split(' ').map(&:to_i)

flag = 0;

data.length.times do |i|
    (data.length-(i+1)).times do |j|
        if data[j] == data[j+1] then
            flag = 1;
        elsif data[j] > data[j+1] then
            swap(data,j,j+1)
        end
        if flag == 1 then break end
    end
    if flag == 1 then break end
end

if flag == 1 then
    puts("NO")
else 
    puts("YES")
end