napzak_num, napzak_limit = gets.split(' ').map(&:to_i)

dP = Hash.new
dP[0] = 0
max_cost = 0

napzak_num.times do 
    
    baggage_weight, baggage_value = gets.split(' ').map(&:to_i)
    dP_temp = dP.clone

    dP.each do |weight, value|
        total_weight = weight + baggage_weight
        total_value  = value + baggage_value

        if napzak_limit >= total_weight

            if dP_temp.has_key?(total_weight)
                if dP_temp[total_weight] < total_value
                    dP_temp[total_weight] = total_value
                end
            else 
                dP_temp[total_weight] = total_value
            end

            if total_value > max_cost
                max_cost = total_value
            end

        else 
            break

        end

    end

    dP = dP_temp

end

p max_cost
