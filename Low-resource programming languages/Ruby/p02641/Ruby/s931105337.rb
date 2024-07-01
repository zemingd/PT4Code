X, N = gets.split.map &:to_i
P = gets.split.map &:to_i
for i in 0..200
    if !P.include?(X - i)
        p X - i
        exit
    end
    if !P.include?(X + i)
        p X + i
        exit
    end
end