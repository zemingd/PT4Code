n = gets.to_i

for a in -500..500 do
    for b in -500..500 do
        if n == (a**5) - (b**5)
            puts a.to_s + " " + b.to_s
            exit
        end
    end
end