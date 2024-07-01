n,k=gets.split.map(&:to_i)
arr = Array.new(n,0)
arr2 = gets.split.map(&:to_i)
n.times do |i|
  puts arr[arr2[i]-1]
  arr[arr2[i]-1]+=1
end
arr.sort.reverse!
ans = arr[0..k-1].inject(:+)
puts n - ans
