n = gets.to_i
arr = gets.chomp.split(' ')
results = []
(0...n).each do |i|
  if i % 2 == 0
    results.push(arr[i])
  else
    results.insert(0, arr[i])
  end
end
results.reverse! if n % 2 == 1
puts results.join(' ')