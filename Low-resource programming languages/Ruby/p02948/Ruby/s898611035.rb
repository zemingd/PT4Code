N,M = gets.split.map(&:to_i)
as=[]
for i in 0..N-1
  as << gets.split.map(&:to_i)
end
as=as.sort{|a,b|(a[1] <=> b[1])*(-1)}
i=-1
use=[]
# p as

i=-1
use=[]
while true
  break if i==N-1
  i+=1
  inser=Array.new
  inser << as[i]
  j=i
  while true
    j+=1
    if j!=N && as[i][1]==as[j][1]
      inser << as[j]
    else
      j+=-1
      inser.sort!{|a,b|(a[0] <=> b[0])*(-1)}
      # p inser
      use = use+inser
      break
    end
    i=j
  end
end
# p use

cnt=0
for i in 1..M
  j=-1
  while true
    j+=1
    break if j==use.size
    if i+use[j][0]<=M+1
      cnt += use[j][1]
      use.delete_at(j)
      break
    end
  end
end
puts cnt
