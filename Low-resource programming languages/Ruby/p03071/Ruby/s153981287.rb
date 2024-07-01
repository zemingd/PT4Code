A, B = gets.split.map(&:to_i)

coin = 0
2.times do
    if A <= B do
        coin += B
        B -= 1
    else
        coin += A
        A -= 1
    end
end
print(coin)