H,W=gets.chomp.split(" ").map(&:to_i)
MEMO=Array.new(H*W,0)
MAP=[]
H.times do
    s=gets.chomp
    MAP.push(s)
end
counts=Array.new(W,0)
H.times do |h|
    count=0
    W.times do |w|
        if MAP[h][w]=="."
            count+=1
            counts[w]+=1
        else
            if count > 0
              count.times do |c|
                  MEMO[h*W+w-1-c]+=count
              end
            end
            count=0
            if counts[w] > 0
                counts[w].times do |c|
                    MEMO[(h-1-c)*W+w]+=counts[w]
                end
            end
            counts[w]=0
        end
    end
    if count > 0
        count.times do |c|
            MEMO[h*W+W-1-c]+=count
        end
    end
end
W.times do |w|
    if counts[w] > 0
        counts[w].times do |c|
            MEMO[(H-1-c)*W+w]+=counts[w]
        end
    end
end
ret=0
MEMO.each do |m|
  ret=m if ret < m
end
puts ret-1
