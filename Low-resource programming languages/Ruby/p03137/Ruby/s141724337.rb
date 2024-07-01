n,m = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
if m - n <= 0
  puts 0
  exit
end
ans = 0
intervals = []
i = 1
while i < arr.size
  intervals << arr[i-1] - arr[i]
  i += 1
end
intervals.sort!
puts intervals[0..(m-n-1)].sum