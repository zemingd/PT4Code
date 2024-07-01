N = gets.to_i
towns = gets.split.map(&:to_i)
fighters = gets.split.map(&:to_i)

counter = 0
f = fighters.count
f.times do |i|
  index = f - i - 1

  if fighters[index] > towns[index + 1]
    counter += towns[index + 1]
    fighters[index] -= towns[index + 1]
    if fighters[index] <= towns[index]
      counter += fighters[index]
      towns[index] = (towns[index] - fighters[index]).abs
    else
      counter += towns[index]
      towns[index] = 0
    end
  else
    counter += fighters[index]
  end
end
puts counter