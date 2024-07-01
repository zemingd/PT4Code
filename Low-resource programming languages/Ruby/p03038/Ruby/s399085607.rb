N,M=gets.chomp.split(" ").map(&:to_i)
array=gets.chomp.split(" ").map(&:to_i).sort
bcs=[]
M.times do
    b,c=gets.chomp.split(" ").map(&:to_i)
    bcs.push([b,c])
end
bcs=bcs.sort_by{|b,c|c}

ret=0
N.times do
    if bcs.empty?
        ret+=array[-1]
        array.pop
    else
        if array[-1] > bcs[-1][1]
            ret+=array[-1]
            array.pop                
        else
            ret+=bcs[-1][1]
            if bcs[-1][0] == 1
                bcs.pop
            else
                bcs[-1][0]-=1
            end
        end
    end
end
puts ret
