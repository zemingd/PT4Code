a = gets.to_i
b = gets.to_i
cnt = 0

2.times do
    if a > b then
        cnt = (cnt + a)
        a -= 1
    else
        cnt = (cnt + b)
        b -= 1
    end
end

puts cnt