n,m = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
switch = false
i = 0
while i < m
  switch = true if arr[i] < (arr.sum/(4*m))
  break if switch
  i += 1
end

if switch
  puts "No"
else
  puts "Yes"
end
