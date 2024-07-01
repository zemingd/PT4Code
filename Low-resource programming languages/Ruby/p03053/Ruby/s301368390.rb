H, W = gets.chomp.split(' ').map(&:to_i)
map = []
blacks = []
H.times do |h|
  line = gets.chomp.tr('.#', '01')
  index = 0
  while(index = line.index('1', index)) do
    blacks.push([h, index])
    index = index + 1
  end
  map.push(line)
  # map.push(gets.chomp.split('').map.with_index do |c, w|
  #   if c == '#'
  #     blacks.push [h,w]
  #   end
  #   c == '#' ? 1 : 0
  # end)
end
result = 0
while(q = blacks.shift) do
  h, w = q
  [[0,1],[0,-1],[1,0],[-1,0]].each do |dh,dw|
    next if h+dh < 0 || h+dh >= H || w+dw < 0 || w+dw >= W
    next if map[h+dh][w+dw].to_i > 0
    map[h+dh][w+dw] = (map[h][w].to_i + 1).to_s
    blacks.push [h+dh, w+dw]
    result = [result, map[h+dh][w+dw].to_i].max
  end
end
puts (result - 1)