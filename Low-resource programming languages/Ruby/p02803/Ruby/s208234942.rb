ARG_H, ARG_W = gets.split.map(&:to_i)
map = Array.new(ARG_H+2)
(ARG_H+2).times do |i|
  if i == 0 || i == ARG_H+1
    map[i] = Array.new(ARG_W+2, false)
    next
  end
  line = Array.new(ARG_W+2)
  line[0] = false
  line[ARG_W+1] = false
  str = gets.chomp.split('')
  j = 1
  str.each do |chr|
    line[j] = chr == '#' ? false : true
    j+=1
  end
  map[i] = line
end

first_found = false
first_point = [-1,-1]
map.each_with_index do |line, h|
  line.each_with_index do |point, w|
    if point
      first_point = [h, w]
      first_found = true
      break
    end
  end
  break if first_found
end

dxylist = [[0,1], [0,-1], [1,0], [-1,0]]
prev_distance = -1
max_distance=0
max_distance_point=nil
while(max_distance != prev_distance) do
  distance = {
    first_point => 0
  }
  prev_distance = max_distance
  max_distance = 0
  q = [first_point]
  while(q.size > 0) do
    point = q.shift
    dxylist.each do |dxy|
      new_point = [point[0]+dxy[0], point[1]+dxy[1]]
      next unless map[new_point[0]][new_point[1]]
      next if distance[new_point]
      q.push new_point
      new_distance = distance[point] + 1
      distance[new_point] = new_distance
      if new_distance > max_distance
        max_distance = new_distance
        max_distance_point = new_point
      end
    end
  end
  first_point = max_distance_point
end

puts max_distance