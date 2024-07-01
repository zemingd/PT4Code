n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0
maximum = numbers[0]

(1..numbers.length - 1).each do |i|
  if numbers[i] <= maximum
    if numbers[0..i].all? {|e| e >= numbers[i]}
      count += 1
    end
    if maximum <= numbers[i]
      maximum = numbers[i]
    end
  end
end

puts count + 1
