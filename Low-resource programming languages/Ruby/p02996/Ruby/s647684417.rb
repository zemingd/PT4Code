n = gets.to_i
Work = Struct.new(:time, :limit)
works = n.times.map {
  a, b = gets.split.map &:to_i
  Work[a, b]
  }.sort { |w1, w2| (w1.limit <=> w2.limit) * 2 + (w1.time <=> w2.time) }
time = 0
works.each do |w|
  time += w.time
  if time > w.limit
    puts "No"
    exit
  end
end
puts "Yes"