n, m = gets.chomp.split(" ").map(&:to_i)
roads = []
m.times { roads << gets.chomp.split(" ").map(&:to_i) }

cities = []
roads.each do |(src, dst)|
  cities[src] ||= 0
  cities[dst] ||= 0

  cities[src] += 1
  cities[dst] += 1
end

cities[1..-1].each do |c|
  puts c ? c : 0
end
