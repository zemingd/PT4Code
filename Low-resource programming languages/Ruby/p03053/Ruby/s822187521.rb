require 'pp'
H, W = gets.chomp.split(" ").map(&:to_i)
count = []
H.times do 
    count << gets.chomp.split("").map{|cell| cell == "#" ? 0 : nil}
end
queue = []
for i in 0..H-1
    for j in 0..W-1
        if count[i][j] == 0
            queue << {x: i, y: j}
        end
    end
end

while !queue.empty?
    src = queue.shift
    dst = [
        {x: src[:x] - 1, y: src[:y]},
        {x: src[:x] + 1, y: src[:y]},
        {x: src[:x], y: src[:y] - 1},
        {x: src[:x], y: src[:y] + 1}
    ].select{ |point| 
        (0..H-1).include?(point[:x]) && (0..W-1).include?(point[:y]) && count[point[:x]][point[:y]] == nil
    }
    dst.each do |point|
        count[point[:x]][point[:y]] = count[src[:x]][src[:y]] + 1
    end
    queue += dst
end

puts count.flatten.max