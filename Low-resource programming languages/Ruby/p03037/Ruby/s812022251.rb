n,m = gets.chomp.split(" ").map(&:to_i)

min = 1
max = n

m.times do |i|
  l,r = gets.chomp.split(" ").map(&:to_i)
  min = l if l > min
  max = r if r < max
end

puts [max - min + 1, 0].max

