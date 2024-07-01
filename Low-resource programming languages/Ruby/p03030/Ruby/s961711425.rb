n = gets.to_i
sp = []
n.times do |i|
    input = gets.chomp.split
    input[1] = input[1].to_i
    input << i + 1
    sp << input
end
sp.sort!

orders = []
i = 0
while i < n
    count = 0

    city = sp[i][0]
    price_and_index = []
    sp.each do |arr|
        if arr.include?(city)
            count += 1
            price_and_index << [arr[1], arr[2]]
        end
    end
    price_and_index.sort!.reverse!

    order = []
    price_and_index.each do |arr|
        order << arr[1]
    end
    orders.concat(order)

    i += count
end

orders.each do |order|
    puts order
end