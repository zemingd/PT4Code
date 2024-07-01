N,M=gets.chomp.split.map(&:to_i)
H=gets.chomp.split.map(&:to_i)
goods=Array.new(N,true)

M.times{
    a,b=gets.chomp.split.map(&:to_i)
    if H[a-1] >= H[b-1]
        goods[b-1]=false
    end
    if H[a-1] <= H[b-1]
        goods[a-1]=false
    end
}

puts goods.count(true)