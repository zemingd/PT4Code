n = gets.to_i
r = []
n.times do |i|
  s, p = gets.split
  r << [s, 100 - p.to_i, i + 1]
end
r.sort.each do |ri|
  puts ri[2]
end
