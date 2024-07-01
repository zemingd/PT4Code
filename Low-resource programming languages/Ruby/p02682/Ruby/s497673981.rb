A, B, C, K = gets.split.map(&:to_i)

if A >= K
    puts A
else
    if B >= K - A
        puts A
    else
        puts A - (K - A - B)
    end
end