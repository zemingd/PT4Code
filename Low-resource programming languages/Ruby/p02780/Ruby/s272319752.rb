_, choice_count = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map(&:to_i)

choice_count = choice_count
dices = dices

probabilities = []

dices.each do |dice|
  temp = 0
  1.upto(dice) do |i|
    temp += (i.to_f / dice.to_f).to_f
  end
  probabilities << temp
end

p probabilities

max = 0

probabilities.each_cons(choice_count) do |v|
  v_sum = 0
  v.each do |a|
    v_sum += a
  end
  if v_sum > max
    max = v_sum
  end
end

p max.to_f
