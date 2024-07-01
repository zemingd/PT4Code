n = gets.chomp.to_i
b, f, r, v = gets.chomp.split.map(&:to_i)

rooms = (0..3).to_a
rooms.each { |rooms_f| rooms_f = (0..2).to_a }
rooms.each do |rooms_f|
  rooms_f.each do |rooms_r|
    rooms_r = (0..9).to_a
  end
end

n.times do
  rooms[b-1][f-1][r-1] += v
end

rooms.each do |rooms_f|
  rooms_f.each do
    puts " #{ rooms_f.join(" ") }"
  end
  puts "#" * 20
end
    