W,H,N = STDIN.gets.split.map{|v| v.to_i}

left=0;
right=W;
bottom=0;
top=H;

for times in 1..N do
  x,y,a = STDIN.gets.split.map{|v| v.to_i}
  case a
  when 1 then
    left=[left, x].max
  when 2 then
    right=[right, x].min
  when 3 then
    bottom=[bottom, y].max
  when 4 then
    top=[top, y].min
  end 
end

width=right > left ? right - left : 0
height=top > bottom ? top - bottom : 0
print width*height