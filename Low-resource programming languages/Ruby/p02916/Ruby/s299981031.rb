kind_num = gets.chomp.to_i
eating_foods = gets.chomp.split(' ').map(&:to_i)
satisfy_rates = gets.chomp.split(' ').map(&:to_i)
adding_satisfy_rates = gets.chomp.split(' ').map(&:to_i)

ans = 0
before_eating_food_idx = nil

eating_foods.each do |food_idx|
  ans += satisfy_rates[food_idx-1]
  if before_eating_food_idx == food_idx - 1
    ans += adding_satisfy_rates[before_eating_food_idx-1]
  end
  before_eating_food_idx = food_idx
end

puts ans