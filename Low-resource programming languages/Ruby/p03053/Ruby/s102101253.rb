def to_black(li,xi,yi,h,w)
  l = []
  # up
  if yi != 0
    if li[xi][yi-1] != '#'
      l << [xi,yi-1]
    end
  end
  # down
  if yi != w-1
    if li[xi][yi+1] != '#'
      l << [xi,yi+1]
    end
  end
  # left
  if xi != 0
    if li[xi-1][yi] != '#'
      l << [xi-1,yi]
    end
  end
  # right
  if xi != h-1
    if li[xi+1][yi] != '#'
      l << [xi+1,yi]
    end
  end
  l
end

h,w = gets.split(' ').map(&:to_i)

li = Array.new
h.times do
  li << gets.chomp.split('')
end

white_list = Array.new
li.each_with_index do |v,i|
  k = v.map.with_index { |e,f| e == '#' ? f : nil }.compact
  if k.size == 0
    next
  end
  k.each do |u|
    white_list += to_black(li,i,u,h,w)
  end
end

cnt = 0

while true
  if white_list.size == 0
    break
  end

  tmp = []
  white_list.uniq!
  white_list.each do |v|
    tmp += to_black(li,v[0],v[1],h,w)
    li[v[0]][v[1]] = '#'
  end
  white_list = tmp

  cnt += 1
end

puts cnt
