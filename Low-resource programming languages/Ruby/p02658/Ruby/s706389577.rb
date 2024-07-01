num = gets.to_i
array = gets.split(' ').map(&:to_i)
ansew = 1
res = 0

num.times do |i|
    ansew = array[i] * ansew
    if ansew > 10 ** 18 && i >= num -1
        puts "-1"
        res = 1
        break
    end
end

if res == 0
    puts ansew
end
