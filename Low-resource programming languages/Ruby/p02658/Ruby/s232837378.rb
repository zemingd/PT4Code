n=gets.to_i
as=gets.split.map &:to_i
res=as.inject(:*)
p res>10**18 ? -1 : res