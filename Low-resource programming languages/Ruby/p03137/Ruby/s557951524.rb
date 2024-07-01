def intervals (list)
    acc = []
    for i in 0..list.size - 2 do
        acc << list[i+1] - list[i]
    end
    acc
end

n,m = gets.split.map &:to_i
x   = gets.split.map &:to_i

if m - n <= 0
    puts 0
else
    puts intervals(x.sort).sort.take(m-n).reduce(:+)
end
