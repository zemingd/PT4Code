n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
k = arr.min
min = arr.map{|i| (i - k)**2}.sum
while k <= arr.max
  if min > arr.map{|i| (i - k)**2}.sum
    min = arr.map{|i| (i - k)**2}.sum
  end
  k += 1
end
puts min