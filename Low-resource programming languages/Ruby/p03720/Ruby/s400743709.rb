num_city,num_road = gets.chomp.split.map(&:to_i)
data = num_road.times.map{gets.chomp.split.map(&:to_i).map{|el| el-1}}

histg = Array.new(num_city, 0)
data.each do |el|
    histg[el[0]] += 1
    histg[el[1]] += 1
end
puts histg