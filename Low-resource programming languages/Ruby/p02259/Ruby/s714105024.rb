n = gets.to_i
numbers = gets.chomp.split(" ").map(&:to_i)

swapFlg = true
count = 0
while swapFlg
    swapFlg = false
    for i in 1..n - 1
        if numbers[n - i] < numbers[n - i - 1]
            numbers[n - i], numbers[n - i - 1] = numbers[n - i - 1], numbers[n - i]
            swapFlg = true
            count += 1
        end
    end
end
puts numbers.join(" ")
puts count
