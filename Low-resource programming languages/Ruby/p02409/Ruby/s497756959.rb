house = Array.new(4, 0)
house.each_index do |i| house[i] = Array.new(3, 0) end
house.each_index do |i| house[i].each_index do |j| house[i][j] = Array.new(10,0) end end

gets.chomp.to_i.times do |i|
  a,b,c,d = gets.chomp.split.map(&:to_i)
  house[a-1][b-1][c-1] = d
end

house.each_index do |i|
  house[i].each do |j|
    puts " "+j*" "
  end
  puts "####################" if i < house.size - 1
end