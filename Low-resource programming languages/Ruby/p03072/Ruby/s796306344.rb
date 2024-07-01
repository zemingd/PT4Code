number = gets.to_i
houses = gets.strip.split.map(&:to_i)

pre_house = nil
count = 0
house_first = houses[0]
house_second = houses[1] ? houses[1] : 0

houses.each_with_index do |house, index|
  if index == 0
    count += 1
  else
    count += 1 if house >= pre_house.to_i && house >= house_first && house >= house_second
  end
  pre_house = house
end

puts count