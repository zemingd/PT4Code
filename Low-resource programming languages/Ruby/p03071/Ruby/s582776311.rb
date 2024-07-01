n = gets.chop.split.map(&:to_i)[0]
hotels = gets.chop.split.map(&:to_i)

sum = 0
current_max = 0

hotels.each do |h|
  if current_max <= h
    sum += 1
    current_max = h
  end 
end

puts sum
