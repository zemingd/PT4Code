num = gets.to_i
foods = gets.split.map(&:to_i)
sats = gets.split.map(&:to_i)
bonus = gets.split.map(&:to_i)

points = 0
j_before = 0

foods.each do |food|
  points += sats[food - 1]
  points += bonus[j_before - 1] if food - j_before == 1 && !j_before.zero?
  j_before = food
end

p points