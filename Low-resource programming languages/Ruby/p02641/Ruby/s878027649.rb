x,n = gets.split(' ').map(&:to_i)
p = gets.split(' ').map(&:to_i)
count = 0
plus = x
minus = x
minus_found = p.include?(x)
plus_found = p.include?(x)
if p.length == 0
    puts x
else
    if !minus_found
        puts x
    else
        while (minus_found && plus_found)
            plus +=1
            minus -= 1
            plus_found = p.include?(plus)
            minus_found = p.include?(minus)
            if plus_found == false || minus_found == false
                break
            end
        end
        if !plus_found && minus_found
            puts plus
        elsif plus_found  && !minus_found
            puts minus
        else
            puts (x- plus).abs < (x - minus).abs ? plus : minus
        end
    end
end