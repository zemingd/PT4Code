X,Y,Z,K=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
bs=gets.split.map(&:to_i)
cs=gets.split.map(&:to_i)
bcs=Array.new
for i in 0...Y
    for j in 0...Z
        bcs << bs[i]+cs[j]
    end
end
bcs.sort!
bcs.reverse!
bcs=bcs[0,K]
abcs=Array.new
for i in 0...bcs.size
    for j in 0...X
        abcs << bcs[i]+as[j]
    end
end
puts abcs.sort.reverse[0,K]
