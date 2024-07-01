n, m = gets.chomp.split(" ").map(&:to_i)
roads = []
m.times { roads << gets.chomp.split(" ").map(&:to_i) }
roads.flatten!

n.times do |i|
  puts roads.count(i + 1)
end
