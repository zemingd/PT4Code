loop{
    x = gets.split("").map(&:to_i)
    if x[0] == 0
        break
    end
    puts x.inject(:+)
}
