W, H, N = gets.split.map{|i|i.to_i}
grid = Array.new(H){Array.new(W){true}}
N.times{
    x, y, a = gets.split.map{|i|i.to_i}
    case a
    when 1
        H.times{|r|
            (0...x).each{|c|
                grid[r][c] = false
            }
        }
    when 2
        H.times{|r|
            (x...W).each{|c|
                grid[r][c] = false
            }
        }
    when 3
        (0...y).each{|r|
            W.times{|c|
                grid[r][c] = false
            }
        }
    when 4
        (y...H).each{|r|
            W.times{|c|
                grid[r][c] = false
            }
        }
    end
}
puts grid.inject(0){|r, i|r + i.count(true)}
