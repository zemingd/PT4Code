napzak_num, napzak_limit = gets.split(' ').map(&:to_i)
dP = Array.new(napzak_limit + 1, 0)
 
napzak_num.times do 
 
    weight, value = gets.split(' ').map(&:to_i)
 
    weight.upto(napzak_limit) do |w|

        if w - weight >= weight
            dP[w] = dP[w - 1]
        else
            v = dP[w - weight] + value

            if v > dP[w]
                dP[w] = v
            end
        end
 
    end
    
end
 
p dP[napzak_limit]