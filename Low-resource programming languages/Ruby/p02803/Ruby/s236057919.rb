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
max_distance=0
start_h = 1
while(start_h<ARG_H+1) do
  start_w=1
  while(start_w<ARG_W+1) do
    if map[start_h][start_w]
      q = [[start_h, start_w, 0]]
      visit = Array.new(ARG_H+2){Array.new(ARG_W+2)}
      while(qq=q.shift) do
        distance = qq[2]
        if distance > max_distance
          max_distance = distance
        end
        dxylist.each do |dxy|
          h, w = qq[0]+dxy[0], qq[1]+dxy[1]
          next unless map[h][w]
          next if visit[h][w]
          visit[h][w] = true
          q.push([h,w, distance+1])
        end
      end
    end
    start_w +=1
  end
  start_h+=1
end

puts max_distance