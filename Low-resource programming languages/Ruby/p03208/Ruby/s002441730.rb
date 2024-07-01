n,k=gets.split.map(&:to_i)
arr=diff=[]
n.times { arr << gets.to_i }
arr.sort!
v=arr[-1]-arr[0]
 
(0..n-k).each do |i|
  diff = arr[i+k-1] - arr[i]
  v = [diff, v].min
end
puts v