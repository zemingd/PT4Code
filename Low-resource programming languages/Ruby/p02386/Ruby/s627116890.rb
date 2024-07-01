class DiceError < StandardError
end

n = gets.to_i
dices = []
n.times {dices << gets.split.map(&:to_i)}
throw = {E: [3, 2, 6, 1, 5, 4], N: [5, 1, 3, 4, 6, 2],
         R: [1, 4, 2, 5, 3, 6]}
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
  stack = [:N, :N, :N, :N, :E, :N, :N, :N, :N]
  stack.each do |dir|
    if dice[0] == dices[0][0]
      return dice
    else
      dice = rotate.(dir, dice)
    end
  end
  raise DiceError
}

is_same_dices = ->(dice1, dice2) {
  result = false
  4.times do
    if dice2 == dice1
      result = true
      break
    end
    dice2 = rotate.(:R, dice2)
  end
  result
}

new_dices = [dices[0]]
dices[1, n - 1].each {|d| new_dices << adapt_same_side.(d)}
result = "Yes"
new_dices.combination(2) do |dice1, dice2|
  if is_same_dices.(dice1, dice2)
    result = "No"
    break
  end
end
puts result

