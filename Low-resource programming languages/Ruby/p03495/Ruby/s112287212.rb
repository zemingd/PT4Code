n,k=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
nums=[]
cur=as[0]
num=0
n.times do |i|
  if as[i]==cur
    num+=1
  else
    nums.push(num)
    cur=as[i]
    num=1
  end
  nums.push(num) if i==n-1
end
l=nums.size
puts l>k ? nums.sort[0..l-k-1].inject(:+):0
