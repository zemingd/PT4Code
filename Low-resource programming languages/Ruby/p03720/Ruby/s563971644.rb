line_one = gets.chomp.split
road_count = line_one[1].to_i
city_count = line_one[0].to_i
line = ""
road_count.times do |r|
  line = "#{line} #{gets.chomp}"
end

city_count.times do |i|
  p line.split.count((i+1).to_s)
end