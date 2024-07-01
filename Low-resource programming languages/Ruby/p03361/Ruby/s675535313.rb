h,w = gets.split.map &:to_i

hoge = []
index = 0
h.times do |i|
    line = gets
    hoge[index] = line.chomp
end

h.times do |i|
    w.times do |j|
        c = hoge[i][j]
        if c == "#"
            huga = []
            if i > 0
                huga << hoge[i-1][j]
            end
            if j > 0
                huga << hoge[i][j-1]
            end
            unless i > h
                huga << hoge[i+1][j]
            end
            huga << hoge[i][j+1]
            unless huga.include?("#")
                puts "No"
                exit
            end
        end
    end
end
puts "Yes"