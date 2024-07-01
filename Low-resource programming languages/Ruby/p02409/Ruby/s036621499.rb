n = gets.to_i
rooms = Array.new(4){Array.new(3){Array.new(10, 0)}}
n.times do
  b,f,r,v= gets.split.map(&:to_i)
  rooms[b-1][f-1][r-1] += v
end

puts rooms.map{|x|x.map{|y|' '+y.join(' ')}.join("\n")}.join("\n"+"#"*20+"\n")


