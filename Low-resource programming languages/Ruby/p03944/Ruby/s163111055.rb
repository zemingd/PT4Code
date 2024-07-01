W, H, N = gets.split.map(&:to_i)
left, right, bottom, top = [0, W, 0, H]
 
while gets
  x, y, a = $_.split.map(&:to_i)
 
  if a == 1
    left = [left, x].max
  elsif a == 2
    right = [right, x].min
  elsif a == 3
    bottom = [bottom, y].max
  elsif a == 4
    top = [top, y].min
  end
end
 
p [right - left, 0].max * [top - bottom, 0].max