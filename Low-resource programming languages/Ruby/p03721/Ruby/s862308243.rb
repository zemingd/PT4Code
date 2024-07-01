N,K = gets.chomp.split(" ").map(&:to_i)
a,b = N.times.map{gets.split.map(&:to_i)}.transpose
arr = Array.new(a.max+1,0)
N.times do |i|
  arr[a[i]] += b[i]
end
i = 1
sum = 0
while sum < K
  sum += arr[i]
  break if sum >= K
  i += 1
end
puts i