n = gets.to_i
arr = gets.split(' ').map(&:to_i)

ds = [0, (arr[0] - arr[1]).abs]

(2...n).each do |i|
  ds << [ds[i-2] + (arr[i-2] - arr[i]).abs, ds[i-1] + (arr[i-1] - arr[i]).abs].min
end

puts ds[-1]