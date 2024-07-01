status = 4.times.map{ 3.times.map{ [0] * 10 } }

gets.chomp.to_i.times do
  building, floor, room, tenants = gets.chomp.split.map(&:to_i)
  status[building-1][floor-1][room-1] += tenants
end

puts status.map { |building|
  s_building = building.map { |floor|
    " " + floor.map(&:to_s).join(" ") + "\n"
  }.join("")
}.join("#"*20+"\n")
