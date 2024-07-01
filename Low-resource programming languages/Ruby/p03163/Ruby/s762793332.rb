napzak_num, napzak_limit = gets.split(' ').map(&:to_i)
dP = Array.new(napzak_limit + 1, 0)
 
napzak_num.times do 
    
    dP_temp = dP.clone

    weight, value = gets.split(' ').map(&:to_i)
 
    weight.upto(napzak_limit) do |w|
        v = dP[w - weight] + value

        if v > dP[w]
            dP_temp[w] = v
        end
 
    end

    dP = dP_temp
    
end
 
p dP[napzak_limit]