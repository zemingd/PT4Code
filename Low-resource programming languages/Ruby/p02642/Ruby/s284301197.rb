n = gets.to_i
N = gets.split.map(&:to_i).sort().reverse().uniq
count = N.count
count -= 1 if n != N.count
0.upto(N.count-2) do |idx|
    (idx + 1).upto(N.count-1) do |m| 
        if  N[idx] % N[m]  == 0 
            count -= 1 
            break
        end
        
    end
end

puts count