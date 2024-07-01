ROOM_NUM = 10
FLOOR_NUM = 3
BUILDING_NUM = 4
building_info = Array.new(BUILDING_NUM).map{Array.new(FLOOR_NUM).map{Array.new(ROOM_NUM,0)}}

n = gets.chop.to_i

1.step n do
  b, f, r, v = gets.chop.split(' ').map(&:to_i)
  building_info[b-1][f-1][r-1] += v
end

building_info.each_with_index do |building, index|
  building.each do |floor|
    floor.each do |room|
      printf " %d", room
    end
    puts ""
  end
  puts "#"*ROOM_NUM*2 if index != 3
end

