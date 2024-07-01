def dfs(n,i,b)
  r=0
  [3,5,7].each do |j|
    nb=b|2**j
    nn=n+j*10**i
    next if N<nn
    r+=1 if [nb[3],nb[5],nb[7]].all?{|i|i==1}
    r+=dfs(nn,i+1,nb)
  end
  r
end

N=gets.to_i
puts dfs(0,0,0)
