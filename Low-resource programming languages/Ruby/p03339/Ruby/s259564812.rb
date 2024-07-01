n = gets.to_i
s = gets.chomp.chars
rs = s.reverse
maxw = s.count("W")
maxe = s.count("E")

w = []
n.times do |i|
  if rs[i] == "W"
    maxw -= 1
  end
  w << maxw
end
west = w.reverse

east = []
n.times do |i|
  if s[i] == "E"
    maxe -= 1
  end
  east << maxe
end

min = n
n.times do |i|
  sum = west[i] + east[i]
  min = sum if min > sum
end

p min