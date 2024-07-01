@n=gets.chomp.to_i
all_v=gets.chomp.split(" ").map(&:to_i)
even=all_v.select.with_index{|v,i| i%2==0}.sort
odd=all_v.select.with_index{|v,i| i%2==1}.sort
def change_num(*arr)
  sum=0
  max=0
  v=arr[0]
  for i in 0..@n/2-1 do
    if arr[i]==v then
      sum+=1
    else
      max=[max,sum].max
      v=arr[i+1]
      sum=0
    end
    max=[max,sum].max
  end
  change = @n/2-max
  return change
end
if change_num(*even)==0 && change_num(*odd) && all_v[0]==all_v[1] then
  puts @n/2
else
  puts change_num(*even)+change_num(*odd)
end