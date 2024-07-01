possible_appearances = ->(dice) {
  table = 
     [[0, 1, 2, 3, 4, 5], [3, 1, 0, 5, 4, 2], [1, 5, 2, 3, 0, 4], [5, 1, 3, 2, 4, 0],
      [1, 2, 0, 5, 3, 4], [3, 5, 1, 4, 0, 2], [5, 4, 2, 3, 1, 0], [2, 1, 5, 0, 4, 3],
      [1, 0, 3, 2, 5, 4], [5, 2, 1, 4, 3, 0], [2, 4, 0, 5, 1, 3], [4, 5, 3, 2, 0, 1],
      [3, 4, 5, 0, 1, 2], [4, 0, 2, 3, 5, 1], [1, 3, 5, 0, 2, 4], [2, 0, 1, 4, 5, 3],
      [0, 4, 3, 2, 1, 5], [4, 2, 5, 0, 3, 1], [4, 3, 0, 5, 2, 1], [2, 5, 4, 1, 0, 3],
      [3, 0, 4, 1, 5, 2], [0, 3, 1, 4, 2, 5], [0, 2, 4, 1, 3, 5], [5, 3, 4, 1, 2, 0]]
  result = []
  table.each do |dice1|
    another = Array.new(6, 0)
    dice1.each_with_index {|n, i| another[n] = dice[i]}
    result << another
  end
  result.uniq
}

n = gets.to_i
dices = []
n.times {dices << gets.split.map(&:to_i)}
result = "Yes"
dices.combination(2) do |dice1, dice2|
  if possible_appearances.(dice1).include?(dice2)
    result = "No"
    break
  end
end
puts result

