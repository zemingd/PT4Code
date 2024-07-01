H, W = gets.split.map(&:to_i)
as = H.times.map{gets.chomp}

huse = {}
wuse = {}
H.times do |i|
    W.times do |j|
        if as[i][j] == '#'
            huse[i] = true
            wuse[j] = true
        end
    end
end

huse.keys.sort.each do |i|
    puts wuse.keys.sort.map{|j| as[i][j]}.join
end