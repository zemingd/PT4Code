N,M=gets.split()
n=Array.new(N.to_i(),false)
H=gets.split()
road=Array.new(M.to_i())
for i in 1..M.to_i() do
  road[i-1]=gets.split()
end
for i in 0..M.to_i()-1 do
  way=road[i]
  for j in 0..way.length-1 do
    n[way[j].to_i()-1]=true
  end
  if H[way[0].to_i()-1]<H[way[1].to_i()-1] then
    n[way[0].to_i()-1]=false
  else
    n[way[1].to_i()-1]=false
  end
end
puts(n.count(true))
