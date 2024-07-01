def f x,y 
  if x<y
    if 0<=x or y<=0
      p y - x
    else
      p [y - x, (y.abs - x.abs).abs + 1].min
    end
  elsif x>y
    if y<=0 and 0<=x
      p (y.abs - x.abs) + 1
    else
      p (x - y) + 2
    end
  else
    p 0
  end
end

x, y = gets.split.map(&:to_i)

f x, y