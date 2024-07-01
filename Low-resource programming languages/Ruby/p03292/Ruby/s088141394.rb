arr = gets.chomp.split(' ').map(&:to_i).sort
ans = 0
i = 0
while i < (arr.size-1) # 2
  ans += (arr[i+1]-arr[i]).abs
  i += 1
end
puts ans