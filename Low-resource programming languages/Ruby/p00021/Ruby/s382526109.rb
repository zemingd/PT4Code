n = gets.to_i
n.times do
  x1,y1,x2,y2,x3,y3,x4,y4 = gets.split.map(&:to_f)
  if (x2-x1)/(y2-y1) == (x4-x3)/(y4-y3)
    puts "YES"
  else
    puts "NO"
  end
end