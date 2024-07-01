def dfs(ls,cur,a,b,c)
  if cur==N
    if [a,b,c].min>0
      return (a-A).abs+(b-B).abs+(c-C).abs-30
    else
      return 10**9
    end
  else
    ret0=dfs(ls,cur+1,a,b,c)
    reta=dfs(ls,cur+1,a+ls[cur],b,c)+10
    retb=dfs(ls,cur+1,a,b+ls[cur],c)+10
    retc=dfs(ls,cur+1,a,b,c+ls[cur])+10
    return [ret0,reta,retb,retc].min
  end
end
N,A,B,C=gets.split.map(&:to_i)
ls=N.times.map{gets.to_i}
puts dfs(ls,0,0,0,0)
