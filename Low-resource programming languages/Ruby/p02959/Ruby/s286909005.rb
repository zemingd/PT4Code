n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

cnt =0
for i in 0...bs.size
  cnt+=[bs[i],as[i]+as[i+1]].min
  as[i+1]=[as[i+1]-(bs[i]-as[i]),0].max if as[i]<bs[i]
end
puts cnt
