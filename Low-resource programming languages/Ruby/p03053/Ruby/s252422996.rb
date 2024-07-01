H,W=gets.split.map(&:to_i)

q = []
map = H.times.map { |y|
    s = gets.chomp
    x = 0
    while x_ = s.index('#',x)
        q << [0,x_-1,y]
        q << [0,x_+1,y]
        q << [0,x_,y-1]
        q << [0,x_,y+1]
        x = x_ + 1
    end
    s
}

until q.empty?
    n,x,y = q.shift
    next if x < 0 || y < 0 || W <= x || H <= y || map[y][x] == '#'
    map[y][x] = '#'
    q << [n+1,x-1,y] << [n+1,x+1,y] << [n+1,x,y-1] << [n+1,x,y+1] 
end

puts n