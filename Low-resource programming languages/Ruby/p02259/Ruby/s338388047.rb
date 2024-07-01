arr = []
count = 0
n = gets
arr = gets.chomp.split.map(&:to_i)

(arr.length - 1).times do |i|
  j = arr.length - 1
  i += 1
  while j > 0
    if(arr[j] < arr[j-1])
      tmp = arr[j]
      arr[j] = arr[j-1]
      arr[j-1] = tmp
      count += 1
    end
    j -= 1
  end
end
puts arr.join(' ')
puts count
