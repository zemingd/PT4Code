h,w=gets.split.map &:to_i

if w % 2 == 0 then
  p (w/2).floor * h
else
  p ((w+1)/2).floor * ((h+1)/2).floor + (w/2).floor * (h/2).floor
end
