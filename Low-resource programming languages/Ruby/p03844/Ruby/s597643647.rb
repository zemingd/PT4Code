_n = gets.chomp.to_i
t = gets.chomp.split.map(&:to_i)
m = gets.chomp.to_i
px = []
m.times do
  px << gets.chomp.split.map(&:to_i)
end
d = t.sum
px.each do |p, x|
  puts (d - t[p - 1] + x).to_s
end
