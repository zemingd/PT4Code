n,k= gets.split.map(&:to_i)
array = n.times.map{gets.to_i}
brray = array.sort
crray = []
for num in 0..n-k do
  crray.push(brray[num+k-1]-brray[num])
end
puts crray.min