num = gets.to_i
cities = {}
num.times do |i|
  input_city_name, input_score = gets.split(" ")
  cities[input_city_name] ||= {}
  cities[input_city_name][input_score.to_i] = i + 1
end

cities.keys.sort.each do |city_name|
  rsts = cities[city_name] 
  rsts.sort{|(k1, v1), (k2, v2)| k2 <=> k1 }.to_h.each_pair do |_, rst|
    puts rst
  end
end