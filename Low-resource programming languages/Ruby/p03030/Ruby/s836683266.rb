n=gets.chomp.to_i
sp_list=[]
for i in 1..n do
  s_p=gets.chomp.split(" ")
  sp_list.push([i,s_p[0],s_p[1].to_i])
end

0.upto(n-2) do |i|
  (n-1).downto(i+1) do |j|
    if sp_list[j-1][1]>sp_list[j][1]
      sp_list[j-1],sp_list[j]=sp_list[j],sp_list[j-1]
    end
    if sp_list[j-1][1]==sp_list[j][1] && sp_list[j-1][2]<sp_list[j][2]
      sp_list[j-1],sp_list[j]=sp_list[j],sp_list[j-1]
    end
  end
end

for i in 0..n-1 do
  puts sp_list[i][0]
end