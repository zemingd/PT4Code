N=gets.to_i
as=gets.split.map(&:to_i)
bs=gets.split.map(&:to_i)
cs=gets.split.map(&:to_i)
cnt=0
for i in 0..N-1
    cnt+=bs[as[i]-1]
    cnt+=cs[as[i]-1]if i!=N-1 && as[i]+1==as[i+1]
end
p cnt
