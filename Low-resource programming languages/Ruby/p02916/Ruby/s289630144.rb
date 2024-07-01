n = gets.to_i

dishes = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)
bonus = gets.split.map(&:to_i)

res = 0

last_dish = -2
dishes.each_with_index do |dish, idx|
    dish -= 1
    res += scores[dish]
    res += bonus[last_dish] if dish - last_dish == 1
    last_dish = dish
end

puts res
