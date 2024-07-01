cards = gets.to_i
array = gets.split(" ").map{|k|k.to_i}
cards_sum1 = 0
cards_sum2 = 0
array.each do |num|
    cards_sum2 += num
end

ans = Float::INFINITY

if array.length == 2
    ans = (array[0] - array[1]).abs
else
    ans = (cards_sum1 - cards_sum2).abs
    for i in 0..array.length-2 do
        cards_sum1 += array[i]
        cards_sum2 -= array[i]
        a = (cards_sum1 - cards_sum2)
        if a < 0
            a *= -1
        end
        if ans > a
            ans = a
        end
    end
end


puts ans