house = Array.new(4,0).map { Array.new(3,0).map { Array.new(10,0) } }
n = gets.to_i
n.times do |i|
  b, f, r, v = gets.chomp.split(" ").map(&:to_i)
  house[b-1][f-1][r-1] += v
end

house.size.times do |i|
  house[i].each do |j|
    puts j.join(" ")
  end
  puts "#" * 20 if i + 1 < house.size
end