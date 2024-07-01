n = gets.to_i
dices = []
n.times {dices << gets.split.map(&:to_i)}
throw = {E: [3, 2, 6, 1, 5, 4], N: [5, 1, 3, 4, 6, 2],
         S: [2, 6, 3, 4, 1, 5], W: [4, 2, 1, 6, 5, 3]}
th = {}
throw.each_key {|k| th[k] = throw[k].map(&:pred)}

rotate = ->(dir, dice) {
  next_dice = Array.new(6, 0)
  dice.each_with_index do |d, i|
    next_dice[th[dir][i]] = d
  end
  next_dice
}

adapt_same_side = ->(dice) {
  stack = []
  loop do
    [:E, :N, :S, :W].each {|d| stack << [dice, d]}
    dice, dir = stack.shift
    next_dice = rotate.(dir, dice)
    if next_dice[1] == dices[0][1]
      break next_dice
    else
      dice = next_dice
    end
  end
}

is_same_dices = ->(dice1, dice2) {
  result = false
  4.times do
    if dice2 == dice1
      result = true
      break
    end
    dice2 = rotate.(:E, dice2)
  end
  result
}

new_dices = [dices[0]]
dices[1..-1].each {|d| new_dices << adapt_same_side.(d)}
result = "Yes"
new_dices.combination(2) do |dice1, dice2|
  if is_same_dices.(dice1, dice2)
    result = "No"
    break
  end
end
puts result

