N, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort

if as.inject(:+) == x
    puts N
else
    ans = 0
    as.each do |a|
        if x >= a
            ans += 1
            x -= a
        else
            break
        end
    end
    puts [ans, N-1].min
end