H,W=gets.split.map(&:to_i)

q = []
map = H.times.map { |y|
    s = gets.chomp
    s.each_char.with_index.map {|c,x|
        if c == '#'
            q << [x,y]
            1
        else
            0
        end
    }
}

n = 0
qq = [[0,q]]
loop do
    n, a = qq.shift
    break if a.empty?
    q = []
    a.each do |x,y|
        map[y][x] = 1
        q << [x-1,y] if 0 < x && map[y][x-1] == 0
        q << [x+1,y] if x < W-1 && map[y][x+1] == 0
        q << [x,y-1] if 0 < y && map[y-1][x] == 0
        q << [x,y+1] if y < H-1 && map[y+1][x] == 0
    end
    qq << [n+1,q]
end

puts n - 1