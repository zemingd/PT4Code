w, h, x, y = gets.split(" ").map(&:to_i)

horizonally_devided = []
vertically_devided = []

horizonally_devided << w * y
horizonally_devided << w * (h - y)

vertically_devided << x * h
vertically_devided << (w - x) * h

minimums = []

minimums << horizonally_devided.min
minimums << vertically_devided.min

ans1 = minimums.max

if minimums[0] == minimums[1]
  ans2 = 1
else
  ans2 = 0
end

puts "#{ans1} #{ans2}"