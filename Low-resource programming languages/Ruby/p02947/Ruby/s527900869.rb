n = gets.chomp.to_i
arr = []
(1..n).each do |i|
  arr[i-1] = gets.chomp.to_s
  arr[i-1] = arr[i-1].split("").sort
end
count = 0
puts arr.length - arr.uniq.length