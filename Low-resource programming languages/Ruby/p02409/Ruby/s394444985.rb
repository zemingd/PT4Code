buildings = Array.new(4).map { Array.new(3).map { Array.new(10,0) } }

n = gets.chomp.to_i
n.times do
  line = gets.chomp.split
  b = line[0].to_i
  f = line[1].to_i
  r = line[2].to_i
  v = line[3].to_i

  buildings[b-1][f-1][r-1] += v
end

buildings.each do |floors|
  floors.each do |rooms|
    puts rooms.join(' ')
  end
  puts '####################'
end