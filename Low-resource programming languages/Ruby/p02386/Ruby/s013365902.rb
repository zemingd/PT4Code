require 'set'

roll = lambda do |dice, p|
  dice.each_with_index.sort_by {|_, i| p[i] }.map(&:first)
end
permutations = Set.new
permutations << [0, 1, 2, 3, 4, 5]
todo = [[0, 1, 2, 3, 4, 5]]
until todo.empty?
  dice = todo.pop
  [[2, 1, 5, 0, 4, 3], [4, 0, 2, 3, 5, 1]].each do |p|
    d = roll[dice, p]
    unless permutations.member? d
      permutations << d
      todo << d
    end
  end
end
dices = gets.to_i.times.map { gets.split.map(&:to_i) }
puts(dices.group_by {|d| d.sort }.each_value.all? {|ds| (0...ds.size-1).all? {|i| (i+1...ds.size).all? {|j| permutations.all? {|p| roll[ds[i], p] != ds[j] } } } } ? 'Yes' : 'No')