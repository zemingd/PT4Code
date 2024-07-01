towers,path = gets.chomp!.split(" ").map(&:to_i)
heights = gets.chomp!.split(" ").map(&:to_i)
flags = []
towers.times{
    flags << 1
}

path.times{
    twins = gets.chomp!.split(" ").map(&:to_i)

    if heights[twins[0]-1] >= heights[twins[1]-1]
        flags[twins[1]-1] = 0
    else
        flags[twins[0]-1] = 0
    end
}

p flags.count(1)