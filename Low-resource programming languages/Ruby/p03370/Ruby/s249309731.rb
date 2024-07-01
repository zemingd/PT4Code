n, g = STDIN.gets.chomp.split(' ').map(&:to_i)
c = 0
min = nil
n.times do |i|
  s = STDIN.gets.chomp.to_i
  g -= s
  c += 1
  min = s if min.nil? || min > s
end
c += g / s
puts c
