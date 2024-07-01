dishes = []
5.times do
  dishes.push(gets.to_i)
end
dishes_remainder = []
dishes_actual = []
dish_remainder = 0
dishes.each do |dish|
  dish_remainder = dish % 10
  if dish_remainder == 0
    dishes_actual.push(dish)
    dish_remainder += 10
  else
    dishes_actual.push(dish + (10 - dish_remainder))
  end
  dishes_remainder.push(dish_remainder)
end
# shortcut = 10 - dishes_remainder.min
# sum = dishes_actual.sum - shortcut
# puts sum