ashiba_num, jump_num = gets.split(' ').map(&:to_i)
ashiba_cost = gets.split(' ').map(&:to_i)

dP = []
dP_comp = []
dP[0] = 0
dP[1] = (ashiba_cost[1] - ashiba_cost[0]).abs

range = 2..ashiba_num - 1 
range2 = 1..jump_num
range.each do |move|

    range2.each do |jump|
        if move - jump >= 0
            dP_comp.push(dP[move - jump] + (ashiba_cost[move] - ashiba_cost[move - jump]).abs)
        else
            dP_comp.push((ashiba_cost[move] - ashiba_cost[0]).abs)
        end
    end

   dP[move] = dP_comp.min
   dP_comp.clear

end

p dP.last