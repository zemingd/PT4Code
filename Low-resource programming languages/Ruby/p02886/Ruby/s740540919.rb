N=gets.chomp.to_i
d=[]
d=gets.chomp.split(" ").map{|i| i.to_i}
sum=0

for i in 0..(N-2) do
  for j in (i+1)..(N-1) do
    sum+=d[i]*d[j]
  end
end

print("#{sum}")
