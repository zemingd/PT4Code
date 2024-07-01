n,k=gets.split.map(&:to_i)
arr=[]
n.times do
  a,b_tmp=gets.split
  b=b_tmp.to_i
  arr += (a*b).chars
end

arr.sort!
puts arr[k]