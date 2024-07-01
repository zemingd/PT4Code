h,w=gets.chomp.split(" ").map(&:to_i)
mass=[]
ans=[]
stay=false
for i in 0..h-1 do
  mass.push(gets.chomp.split(" "))
end
i=0
while i<(h-1) do
  if mass[i][0]==("."*w) then
    mass.delete_at(i)
    h-=1
  end
  i+=1
end

for i in 0..w-1 do
  for j in 0..h-1 do
    if mass[j][0][i]=="#" then
      stay = true
    end
  end
  if stay then
    ans.push(i)
  end
  stay=false
end
for i in 0..h-1 do
ans.each{|j|
  print mass[i][0][j]
}
puts ""
end