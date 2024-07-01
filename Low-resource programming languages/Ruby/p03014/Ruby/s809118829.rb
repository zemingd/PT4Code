h, w = gets.split.map(&:to_i)
s = h.times.map{gets.chomp}
max_row = 0
max_col = 0
cnt = Array.new(h).map{Array.new(w, 0)}
0.upto(h-1) do |i|
    done = Array.new(w)
    0.upto(w-1) do |j|
        next if s[i][j] == '#'
        next if done[j]
        l = 0
        while(j+l < w)
            break if s[i][j+l] == '#'
            l += 1
        end
        0.upto(l-1) do |k|
            cnt[i][j+k] += l
            done[j+k] = true
        end
    end
end
0.upto(w-1) do |j|
    done = Array.new(h)
    0.upto(h-1) do |i|
        next if s[i][j] == '#'
        next if done[j]
        l = 0
        while(i+l < h)
            break if s[i+l][j] == '#'
            l += 1
        end
        0.upto(l-1) do |k|
            cnt[i+k][j] += l
            done[i+k] = true
        end
    end
end
puts cnt.flatten.max - 1