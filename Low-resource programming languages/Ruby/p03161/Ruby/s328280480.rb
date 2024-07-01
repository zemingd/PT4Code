ashiba_num, jump_num = gets.split(' ').map(&:to_i)
ashiba_cost = gets.split(' ').map(&:to_i)

dP = []
dP_min = -1
dP[0] = 0
dP[1] = (ashiba_cost[1] - ashiba_cost[0]).abs

range = 2..ashiba_num - 1 
range2 = 1..jump_num
range.each do |move|

    range2.each do |jump|
        if move - jump >= 0
            dP_now = dP[move - jump] + (ashiba_cost[move] - ashiba_cost[move - jump]).abs
        else
            dP_now = (ashiba_cost[move] - ashiba_cost[0]).abs
        end
        
        if dP_min >= dP_now || dP_min < 0
            dP_min = dP_now 
        end

    end

   dP[move] = dP_min
   dP_min = -1

end

p dP.last