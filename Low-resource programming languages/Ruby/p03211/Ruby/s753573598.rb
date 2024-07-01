x = gets
min = 999
(0...(x.size-2)).each {|i|
    tmp = (753 - x[i, 3].to_i).abs
    if (min > tmp) 
        min = tmp
    end
}
puts min