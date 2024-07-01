n = gets.to_i
date = []
n.times do
  x1,y1,x2,y2,x3,y3,x4,y4 = gets.chomp.split.map(&:to_r)

  # if (y2 - y1)/(x2 - x1) == (y4 - y3)/(x4 - x3)
  if (y2 - y1) * (x4 - x3) == (y4 - y3) * (x2 - x1)
    date << "YES"
  else
    date <<  "NO"
  end
end

n.times do |ni|
  puts date[ni]
end

