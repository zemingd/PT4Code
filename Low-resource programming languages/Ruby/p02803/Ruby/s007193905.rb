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

dxylist = [[0,1], [0,-1], [1,0], [-1,0]]
start_list = []
for start_h in 1..ARG_H do
  for start_w in 1..ARG_W do
    next unless map[start_h][start_w]
    start_list.push([start_h, start_w])
  end
end
max_distance=0
start_list.each do |start|
  q = [[start[0], start[1], 0]]
  visit = Array.new(ARG_H+2){Array.new(ARG_W+2)}
  visit[start[0]][start[1]] = true
  while(qq=q.shift) do
    if qq[2] > max_distance
      max_distance = qq[2]
    end
    dxylist.each do |dxy|
      h, w = qq[0]+dxy[0], qq[1]+dxy[1]
      next unless map[h][w]
      next if visit[h][w]
      visit[h][w] = true
      q.push([h,w, qq[2]+1])
    end
  end
end

puts max_distance