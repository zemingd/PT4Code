number = gets.to_i
houses = gets.strip.split.map(&:to_i)

pre_house = 0
count = 0

houses.each_with_index do |house, index|
  if index == 0
    count += 1
  else
    count += 1 if house >= pre_house && house >= houses[0] && house >= houses[1]
  end
  pre_house = house
end

puts count