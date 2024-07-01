n,m = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)
num = nums.sort
if m == 1 or m<=n
  puts 0
  exit
end
#差を取ってくよーー
array = []
(m-1).times do |i|
  array.unshift(num[i+1]-num[i])
end
ns = array.sort[0..m-n-1]
puts ns.sum
print array