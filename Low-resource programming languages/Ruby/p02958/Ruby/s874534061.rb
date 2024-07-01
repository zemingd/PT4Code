n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

count = 0
sorted_arr = arr.sort

arr.each_with_index do |i, idx|
  unless arr[idx] == sorted_arr[idx]
    count += 1
  end
end

if count == 2 || count == 0
  print 'YES'
else
  print 'NO'
end
