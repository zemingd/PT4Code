N = gets.to_i
L = gets.split(" ").map(&:to_i).sort.reverse
count = 0

(N - 2).times do |i|
    j = i + 1
    while j < N - 1 do
        c = L[i] - L[j] + 1
        ltl, lrg = j + 1, N - 1
        while lrg - ltl > 1 do    
           $mdl = (ltl + lrg) / 2
            if c > L[$mdl] 
                lrg = $mdl
            else
                ltl = $mdl
            end
        end
        if L[$mdl] >= c 
            count += $mdl - j + 1
        end
        j += 1
    end
end

puts count