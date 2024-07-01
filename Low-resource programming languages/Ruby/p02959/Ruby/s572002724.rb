N = gets.to_i
monsters = gets.split.map(&:to_i)
heroes = gets.split.map(&:to_i)
count = 0
N.times do |i|
  rest = heroes[i]
  if rest <= monsters[i]
    count += rest
  else # rest > monsters[i]
    rest -= monsters[i]
    count += monsters[i]
    # i+1の枠
    if rest <= monsters[i+1]
      count += rest
      monsters[i+1] -= rest
    else
      count += monsters[i+1]
      monsters[i+1] = 0
    end
  end
end
puts count
