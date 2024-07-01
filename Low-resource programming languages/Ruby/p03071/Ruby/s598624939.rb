a = gets.to_i
b = gets.to_i
cnt = 0

2.times do
    if a > b then
        cnt = (cnt + a)
        a = a - 1
    elsif a < b then
        cnt = (cnt + b)
        b = b - 1
    end
end

p cnt