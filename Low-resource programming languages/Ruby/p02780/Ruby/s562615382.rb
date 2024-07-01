line = readlines.map(&:chomp)

line[0] = line[0].split(" ")
line[1] = line[1].split(" ")

dice_count = line[0][0].to_i
choice_count = line[0][1].to_i
dices = line[1].map(&:to_i)


probabilities = []

dices.each do |dice|
  temp = 0.to_f
  1.upto(dice) do |i|
    temp += (i.to_f / dice.to_f).to_f
    p temp
  end
  probabilities << temp
end

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
