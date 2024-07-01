(H, W) = gets.chomp.split.map(&:to_i)
grid = (0...H).each { gets.chomp.split }
ls, cs = [], []
grid.each_with_index { |l, i| ls << i if l.all? { |e| l[0] == e } }
grid.transpose.each_widh_index { |c, i| cs << i if c.all? { |e| c[0] == e } }
H.times { |l|
    if ls.include? l
        W.times { |c|
            if cs.include? c
                print grid[l][c]
            end 
        }
        puts "\n"
    end
}