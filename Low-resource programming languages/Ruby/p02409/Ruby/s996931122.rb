ooms = Array.new(4).map! do |n|
  n = Array.new(3).map! do |m|
    m = Array.new(10, 0)
  end
end

gets.to_i.times do
  b, f, r, v = gets.split.map(&:to_i)
  rooms[b - 1][f - 1][r - 1] += v
end

rooms.each_with_index do |i, index|
  i.each do |j|
    puts " " + j.join(" ")
  end
  puts "####################" if index != 3
end