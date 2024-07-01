n = gets.to_i
n.times do |n|
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
 
  a = (x2-x1)*(y4-y3)
  b = (x4-x3)*(y2-y1)
 
  puts (a-b).abs < 1e-10 ? "YES" : "NO"
end