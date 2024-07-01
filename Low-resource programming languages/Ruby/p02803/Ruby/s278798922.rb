h, w = gets.split.map(&:to_i)

s = []
h.times {s << gets.chomp}

ans = 0
h.times do |i|
    w.times do |j|
        next if s[i][j] == "#"
        arr = Array.new(h){Array.new(w, 0)}
        arr[i][j] = 1
        que = [[i, j]]

        while x = que.shift
            ni, nj = x[0], x[1]

            if ni > 0 && s[ni-1][nj] == "." && arr[ni-1][nj] == 0
                arr[ni-1][nj] = arr[ni][nj] + 1
                que << [ni-1, nj]
            end

            if ni < h - 1 && s[ni+1][nj] == "." && arr[ni+1][nj] == 0
                arr[ni+1][nj] = arr[ni][nj] + 1
                que << [ni+1, nj]
            end

            if nj > 0 && s[ni][nj-1] == "." && arr[ni][nj-1] == 0
                arr[ni][nj-1] = arr[ni][nj] + 1
                que << [ni, nj-1]
            end

            if nj < w - 1 && s[ni][nj+1] == "." && arr[ni][nj+1] == 0
                arr[ni][nj+1] = arr[ni][nj] + 1
                que << [ni, nj+1]
            end
        end

        max = arr.map(&:max).max - 1
        ans = max if ans < max
    end
end

puts ans