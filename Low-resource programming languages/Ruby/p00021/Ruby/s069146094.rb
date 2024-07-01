gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  ax1=x2-x1
  ay1=y2-y1
  ax2=-(y4-y3)
  ay2=x4-x3
  if ax1*ax2+ay1*ay2==0
    puts"YES"
  else
    puts"NO"
  end
end