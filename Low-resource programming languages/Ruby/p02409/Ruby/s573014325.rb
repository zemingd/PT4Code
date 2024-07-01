rooms = Array.new(4){ Array.new(3){ Array.new(10, 0) } }
gets.to_i.times do
    b, f, r, v = gets.split.map(&:to_i)
    rooms[b-1][f-1][r-1] += v
end

bs = "#" * 20 + "\n"
puts rooms.map{ |f| f.map{ |r| r.reduce(""){ |pr, nr| "#{pr} #{nr}" } }.join("\n") + "\n" }.join(bs)