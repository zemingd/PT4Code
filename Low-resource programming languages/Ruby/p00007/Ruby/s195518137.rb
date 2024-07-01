p ->(n) {
    res = 100000
    n.times do
        res = ->(x){
            x += ( x * 0.05 ).to_i
            if x % 1000 > 0 then x += 1000 - x % 1000 end
            x
        }.call res
    end
    res
}.call gets.to_i