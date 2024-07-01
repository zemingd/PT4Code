$H, $W = gets.chomp.split.map(&:to_i)
$maze = []
$ans = 0
$H.times do
    $maze << gets.chomp.split("")
end

def update_ans(dist)
    dist.each do |row|
        row.each do |e|
            $ans = $ans > e ? $ans : e
        end
    end
end

def bfs(sx, sy)
    queue = [[sx, sy]]
    reach = Array.new($H).map{Array.new($W, nil)}
    reach[sy][sx] = 0
    until queue.empty?
        x, y = queue.shift
        dist = reach[y][x]
        [
            [x-1, y],
            [x+1, y],
            [x, y-1],
            [x, y+1]
        ].each do |x, y|
            next if x < 0 || $W <= x || y < 0 || $H <= y
            next if reach[y][x]
            if $maze[y][x] == "#" then
                reach[y][x] = -1
                next
            end
            queue << [x, y]
            reach[y][x] = dist+1
        end
    end
    update_ans(reach)
end

$W.times do |i|
    $H.times do |j|
        bfs(i, j)
    end
end

puts $ans