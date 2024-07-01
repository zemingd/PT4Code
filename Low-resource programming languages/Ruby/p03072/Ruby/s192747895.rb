n = gets.to_i
mountains = gets.split.map(&:to_i)
count = 0
highest = 0

mountains.each do |mountain|
  if mountain >= highest
    count += 1
    highest = mountain
  end
end

puts count
