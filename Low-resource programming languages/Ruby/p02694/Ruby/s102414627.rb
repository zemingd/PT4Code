X = gets.to_i

amount = 100

y = 1
while true do
    amount = (amount * 1.01).floor
    break if amount >= X
    y += 1
end

puts y

