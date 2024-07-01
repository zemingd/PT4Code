n=gets.to_i
h=gets.split.map &:to_i

cnt=0
for i in 0...n
    cnt+=1 if (0..i).all?{|j|h[j]<=h[i]}
end
p cnt