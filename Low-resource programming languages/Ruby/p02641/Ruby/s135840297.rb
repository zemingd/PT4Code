n = gets.chomp.split(' ').map(&:to_i)
if n[1] == 0 
    puts n[0]
    exit
end
i = gets.chomp.split(' ').map(&:to_i)



arr = Array.new(100,0)
i.each{|t|
    arr[t-1]+=1
}
ans = 101
kotae = 0
arr.each_with_index{|item,t|
    if item == 0
        if (n[0]-(t+1)).abs < ans
            ans = (n[0]-(t+1)).abs
            kotae = t+1
        end
    end
}
puts kotae