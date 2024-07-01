dishes = []
5.times do
  dishes.push(gets.to_i)
end
dishes_remainder = []
dishes_actual = []
dishes.each_with_index do |dish, index|
  dish_remainder = dish %10
  if dish_remainder == 0
    dish_remainder += 10
  end
  dishes_remainder.push(dish_remainder)
  dishes_actual.push(dish.ceil(-1))
end
shortcut = 10 - dishes_remainder.max
sum = dishes_actual.sum - shortcut
puts sum