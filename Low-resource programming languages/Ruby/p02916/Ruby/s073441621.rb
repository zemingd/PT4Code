n = gets.chop.to_i
a = []
b = []
c = []
n.times { a << gets.to_i }
n.times { b << gets.to_i }
(n-1).times { c << gets.to_i }

index = 0
score = 0
before_food_index = nil
n.times do
  food = a[index]
  food_index = food - 1
  food_score = b[food_index]
  if !before_food_index.nil? && before_food_index + 1 == food_index
    score += c[before_food_index]
  end
  score += food_score
  index += 1
  before_food_index = food_index
end

puts score