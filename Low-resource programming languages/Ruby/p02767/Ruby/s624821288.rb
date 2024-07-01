n = gets.to_i
residents = gets.split.map(&:to_i)
costs = []
(1..100).each do |spot|
  cost = 0
  residents.each do |resident|
    cost += (spot - resident) ** 2
  end
  costs << cost
end
puts costs.min
