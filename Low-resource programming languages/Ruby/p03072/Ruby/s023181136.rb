n=gets.to_i
as=gets.split.map(&:to_i)
res=0
(N-1).times do |i| if as[i]<as[i+1] res+=1 end puts res
  