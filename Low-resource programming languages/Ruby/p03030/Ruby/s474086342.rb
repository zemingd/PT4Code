arr = []

gets.to_i.times do |i|
  city, score = gets.split(' ')
  arr << [city, 100 - score.to_i, i + 1]
end

arr = arr.sort_by do |city, score|
  [city, score]
end

arr.each do |e|
  puts e[2]
end