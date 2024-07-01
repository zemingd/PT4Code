require 'pp'

h, w = gets.chomp!.split.map(&:to_i)
s = []

h.times do |i|
    s1 = gets.chomp!.chars
    s << s1
end

max = -99999999

h.times do |i|
    w.times do |j|
        next if s[i][j] == '#'
        path = [[i, j, 0]]
        memo = Array.new(h)
        h.times do |i|
            memo[i] = Array.new(w, -1)
        end
        memo[i][j] = 0

        while path.empty?.!
            #pp path
            #gets

            y, x, d = path.shift

            if memo[y][x] == -1 || d < memo[y][x] 
                memo[y][x] = d
            end

            if y - 1 >= 0 && memo[y-1][x] == -1 && s[y-1][x] == '.'
                path.push([y-1, x  , d+1])
            end
            if y + 1 < h && memo[y+1][x] == -1 && s[y+1][x] == '.'
                path.push([y+1, x  , d+1])
            end
            if x - 1 >= 0 && memo[y][x-1] == -1 && s[y][x-1] == '.'
                path.push([y  , x-1, d+1])
            end
            if x + 1 < w && memo[y][x+1] == -1 && s[y][x+1] == '.'
                path.push([y  , x+1, d+1])
            end
        end

        sub_max = memo.max.max
        if sub_max > max
            max = sub_max
        end
    end
end

puts max

