H,W=gets.chomp.split(" ").map(&:to_i)
MEMO=Array.new(H*W,0)
MAP=[]
H.times do
    s=gets.chomp
    MAP.push(s)
end
H.times do |h|
    count=0
    W.times do |w|
        if MAP[h][w]=="."
            count+=1
            MEMO[h*W+w]+=count
        else
            count=0
        end
    end
    count=0
    (W-1).downto(0) do |w|
        if MAP[h][w]=="."
            count+=1
            MEMO[h*W+w]+=count
        else
            count=0
        end
    end
end
W.times do |w|
    count=0
    H.times do |h|
        if MAP[h][w]=="."
            count+=1
            MEMO[h*W+w]+=count
        else
            count=0
        end
    end
    count=0
    (H-1).downto(0) do |h|
        if MAP[h][w]=="."
            count+=1
            MEMO[h*W+w]+=count
        else
            count=0
        end
    end
end
ret=0
MEMO.each do |m|
  ret=m if ret < m
end
puts ret-3
