n, x = gets.chomp.split.map(&:to_i)
m = []
n.times do
  m.push(gets.to_i)
end
m.each do |mi|
  x = x - mi 
end
puts n + x / m.min
