_, choice_count = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map(&:to_i)

probabilities = []

dices.each do |dice|
  temp = 0
  1.upto(dice) do |i|
    temp += (i.to_f / dice.to_f).to_f
  end
  probabilities << temp
end

c_sum = [0]

0.upto(dices.length - 1) do |i|
  c_sum[i+1] = c_sum[i] + probabilities[i]
end

v_sum = 0

0.upto(dices.length - choice_count) do |i|

  sum = c_sum[i + choice_count] - c_sum[i]
  v_sum = sum if sum > v_sum
end

p v_sum.to_f
