x,k,d = gets.split.map(&:to_i)

loop{
    if (x - d).abs <= x.abs then
        x = x - d
    else
        x = x + d
    end
    if (x - d).abs == d/2 then
    break
    end
    k = k -1
    break if k == 0
}
puts x.abs