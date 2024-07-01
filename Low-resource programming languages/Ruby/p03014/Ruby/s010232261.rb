H,W=gets.chomp.split(" ").map(&:to_i)
ret=0
MEMO=Array.new(H*W,0)
MAP=[]
H.times do
    s=gets.chomp
    MAP.push(s)
end
H.times do |h|
    from=nil
    (0..W).each do |w|
        if MAP[h][w]=="."
            from=w if from==nil
        else
           if from!=nil
               (from..(w-1)).each do |i|
                   MEMO[h*W+i]=w-from
               end
               from=nil
           end
        end
    end
end
W.times do |w|
    from=nil
    (0..H).each do |h|
        if MAP[h]!=nil && MAP[h][w]=="."
            from=h if from==nil
        else
           if from!=nil
               (from..(h-1)).each do |i|
                   MEMO[w+i*H]+=h-1-from
                   ret=MEMO[w+i*H] if ret < MEMO[w+i*H]
               end
               from=nil
           end
        end
    end
end
puts ret
