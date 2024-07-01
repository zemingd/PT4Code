N = gets.to_i
hotels = gets.chomp.split(" ").map(&:to_i)
count = 0
highest = 0
hotels.each do |hotel|
  if hotel >= highest
    count += 1
    highest = hotel
  end
end
puts count