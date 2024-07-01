n, m = gets.split(' ').map(&:to_i)
arr = []

if n == 1
  puts gets.split(' ').length - 1
else
  n.times.with_index do |i| 
    k = gets.split(' ').map(&:to_i)
    k.shift
    arr << k
  end
  result = 0
  (arr.length-1).times.with_index do |i|
    result = arr[i] & arr[i+1]
    arr[i+1] = result
  end
  puts result.length
end
