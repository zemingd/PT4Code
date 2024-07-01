n,k=gets.split.map(&:to_i)
arr=diff=[]
n.times { arr << gets.to_i }
arr.sort!
v=arr[-1]-arr[0]

(0..n-k+1).each do |i|
  diff = arr[n-k+1] - arr[0]
  v = [diff, v].min
end
puts v