X, N = gets.split(" ").map(&:to_i)
p = gets.split(" ").map(&:to_i).sort
i = 1

if p.include?(X) 
    loop do
        if !(p.include?(X - i))
            puts X - i
            break
        elsif !(p.include?(X + i))
            puts X + i
            break
        else
            i += 1
        end
    end

else
    puts X
end