gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  ax1=x2-x1
  ay1=y2-y1
  ax2=x4-x3
  ay2=y4-y3
  ab=999999999.0
  cd=999999999.0
  if ax1!=0
    ab=ay1/ax1
  end
  if ax2!=0
    cd=ay2/ax2
  end
  if ab==cd
    puts"YES"
  else
    puts"NO"
  end
end