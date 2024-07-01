rooms = Array.new(4) { Array.new(3) { Array.new(10, 0) } }

num = $stdin.readline.to_i
(1..num).each do |i|
  b, f, r, v = $stdin.readline.split(" ").map {|s| s.to_i}

  rooms[b-1][f-1][r-1] += v
end

rooms.each_with_index do |building, i|
  building.each do |floor|
    floor.each do |room|
      print " #{room}"
    end
    puts
  end
  puts "####################" unless i == rooms.size - 1
end

