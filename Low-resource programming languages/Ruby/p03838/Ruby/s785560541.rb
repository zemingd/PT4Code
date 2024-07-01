x,y = gets.split.map &:to_i

add = 0
if y<0
  add = 1
  y = -y
end

p [y-x, y+x+1].min + add