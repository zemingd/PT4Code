num = gets.to_i
array = gets.split(' ').map(&:to_i)
ansew = 1

num.times do |i|
    ansew = array[i] * ansew
    if ansew > 10 ** 18
        puts "-1"
        break
    end
end

if ansew < 10 ** 18
    puts ansew
end