arr = Array.new(4){ Array.new(3){ Array.new(10, 0}}

n = gets.to_i

n.times{
b,f,r,v = gets.split.map(&:to_i)
arr[b-1][f-1][r-1] += v
}


4.times {|i|
    3.times{|j|
        10.times{ |k|
            print " ",h[i][j][k]
        }
        puts
    }
    if i < 3
        puts "####################"
    end
}

