N, M, C = gets.split(' ')
B = gets.split(' ')
count = 0
N.to_i.times do
    tmp = gets.split(' ')
    i = 0
    sum = 0
    M.to_i.times do
        sum = sum + tmp[i].to_i*B[i].to_i
        i = i + 1
    end
    if sum + C.to_i > 0 then
        count = count + 1
    end
end

print count