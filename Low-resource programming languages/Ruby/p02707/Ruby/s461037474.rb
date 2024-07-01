n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
ans = Array.new(n,0)

(n-1).times do |k|
  ans[(arr[k]-1)] += 1
end
p ans
n.times do |l|
  puts ans[l]
  
end