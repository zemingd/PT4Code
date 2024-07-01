n,m = gets.split(" ").map(&:to_i)
count = 0
min = n
max = 0

m.times do
    a,b = gets.split(" ").map(&:to_i)
    if a < min || b > max 
        if a < min 
            min = a
        end
        if b > max
        max = b
        end
        count += 1
    end

end



puts count