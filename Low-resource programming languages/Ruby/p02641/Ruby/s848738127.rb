x, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
d = 0
loop{
    unless a.include?(x - d)
        puts x - d
        break
    end
    unless a.include?(x + d)
        puts x + d
        break
    end
    d += 1
}
