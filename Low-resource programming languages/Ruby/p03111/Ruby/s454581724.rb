def dfs(num,x,y,z)
  if num == N
    [x,y,z].min == 0 ? 100000 : (x-A).abs + (y-B).abs + (z-C).abs - 30
  else
    ret1 = dfs(num+1,x,y,z)
    ret2 = dfs(num+1,x+L[num],y,z) + 10
    ret3 = dfs(num+1,x,y+L[num],z) + 10
    ret4 = dfs(num+1,x,y,z+L[num]) + 10
      [ret1,ret2,ret3,ret4].min
  end
end
N,A,B,C = gets.chomp.split(" ").map(&:to_i)
L = N.times.map{gets.to_i}
puts dfs(0,0,0,0)