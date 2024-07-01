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
            queue << [i, j]
        end
    end
end

while !queue.empty?
    src = queue.shift
    dst = [
        [src[0] - 1, src[1]],
        [src[0] + 1, src[1]],
        [src[0], src[1] - 1],
        [src[0], src[1] + 1]
    ].select{ |point| 
        (0..H-1).include?(point[0]) && (0..W-1).include?(point[1]) && count[point[0]][point[1]] == nil
    }
    dst.each do |point|
        count[point[0]][point[1]] = count[src[0]][src[1]] + 1
    end
    queue += dst
end

puts count.flatten.max